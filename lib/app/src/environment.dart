abstract class Environment {
  abstract final String baseUrl;
  abstract final bool isDev;

  factory Environment.dev() => const _DevEnvironment();

  factory Environment.stage() => const _StageEnvironment();

  factory Environment.prod() => const _ProdEnvironment();
}

class _DevEnvironment implements Environment {
  const _DevEnvironment();

  @override
  String get baseUrl => 'https://your_dev_url';

  @override
  bool get isDev => true;
}

class _StageEnvironment implements Environment {
  const _StageEnvironment();

  @override
  String get baseUrl => 'https://';

  @override
  bool get isDev => false;
}

class _ProdEnvironment implements Environment {
  const _ProdEnvironment();

  @override
  String get baseUrl => 'https://';

  @override
  bool get isDev => false;
}
