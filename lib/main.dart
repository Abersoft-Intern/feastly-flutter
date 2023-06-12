import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';
import 'src/app.dart';

late final SharedPreferences prefs;
const pushKey = 'push_notification_enabled';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

Future<void> _setupFirebaseNotification() async {
  // Firebase related stuff
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  final pushNotificationEnabled = prefs.getBool(pushKey);

  if (pushNotificationEnabled != null && pushNotificationEnabled) {
    await FirebaseMessaging.instance.subscribeToTopic('recipes');
  } else {
    await FirebaseMessaging.instance.unsubscribeFromTopic('recipes');
  }

  // Local notification stuff
  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  flutterLocalNotificationsPlugin.initialize(const InitializationSettings(
    android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    iOS: DarwinInitializationSettings(),
  ));

  const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'recipes_channel',
    'New recipe notification',
    description:
        'This notifies user whenever a new recipe has been added to the app',
    importance: Importance.max,
  );

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    final notification = message.notification;
    final android = message.notification?.android;

    if (notification != null && android != null) {
      flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channelDescription: channel.description,
          ),
        ),
      );
    }
  });
}

void main() async {
  GoogleFonts.config.allowRuntimeFetching = false;
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  prefs = await SharedPreferences.getInstance();
  await _setupFirebaseNotification();

  FlutterNativeSplash.remove();

  runApp(const ProviderScope(child: MyApp()));
}
