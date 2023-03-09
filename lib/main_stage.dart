import 'package:ftemplate/app/app.dart';

Future<void> main() async {
  AppConfig configuredApp = AppConfig(
    environment: Environment.stage(),
    child: const App(),
  );

  await entryPoint(() => configuredApp);
}
