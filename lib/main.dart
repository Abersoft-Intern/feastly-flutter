import 'package:flutter/material.dart';
// ignore:depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  runApp(const MyApp());
}
