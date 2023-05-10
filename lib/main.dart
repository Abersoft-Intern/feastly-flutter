import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore:depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/app.dart';

void main() async {
  GoogleFonts.config.allowRuntimeFetching = false;
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  runApp(const ProviderScope(child: MyApp()));
}
