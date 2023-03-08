library app_logging;

import 'package:app_logging/src/default_logger.dart';
import 'package:app_logging/src/i_logger.dart';

export 'package:app_logging/app_logging.dart';
export 'package:app_logging/src/logging_intercepter.dart';

ILogger? _logger;

ILogger get logger => _logger ??= DefaultLogger()..init();

/// You can implement custom logger
/// [customLogger] should be installed as early as possible.
/// Adding it before the application starts is the most logical choice.
set logger(ILogger customLogger) {
  _logger = customLogger;
}
