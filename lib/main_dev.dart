import 'package:ftemplate/app/app.dart';

Future<void> main() async {
  AppConfig configuredApp = AppConfig(
    environment: Environment.dev(),
    child: const App(),
  );

  await entryPoint(() => configuredApp);
}
