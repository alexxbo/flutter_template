import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ftemplate/app/src/app_config.dart';

Future<void> entryPoint(FutureOr<AppConfig> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  // Don't allow landscape mode
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final app = await builder();
  runApp(app);
}
