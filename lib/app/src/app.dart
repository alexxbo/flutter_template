import 'package:flutter/material.dart';
import 'package:ftemplate/l10n/app_localizations.dart';
import 'package:ftemplate/screens/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FTemplate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routes: {
        '/': (_) => const HomeScreen(),
      },
    );
  }
}
