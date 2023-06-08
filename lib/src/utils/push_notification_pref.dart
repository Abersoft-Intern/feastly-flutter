import 'package:feastly/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'push_notification_pref.g.dart';

@Riverpod(keepAlive: true)
class PushNotificationPref extends _$PushNotificationPref {
  @override
  bool build() {
    final state = prefs.getBool(pushKey);
    return state != null && state;
  }

  Future<void> enable() async {
    await FirebaseMessaging.instance.subscribeToTopic('recipes');
    await prefs.setBool(pushKey, true);
    state = true;
  }

  Future<void> disable() async {
    await FirebaseMessaging.instance.unsubscribeFromTopic('recipes');
    await prefs.setBool(pushKey, false);
    state = false;
  }
}
