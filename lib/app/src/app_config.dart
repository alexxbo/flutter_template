import 'package:flutter/material.dart';
import 'package:ftemplate/app/src/environment.dart';

class AppConfig extends InheritedWidget {
  const AppConfig({
    required this.environment,
    required super.child,
    super.key,
  });

  final Environment environment;

  bool get isDevelopment => environment.isDev;

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
