import 'dart:developer' as developer;

import 'package:app_logging/src/i_logger.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

class DefaultLogger implements ILogger {
  final _logger = Logger('');

  @override
  void init() {
    hierarchicalLoggingEnabled = true;

    if (kDebugMode) {
      _logger.level = Level.ALL;

      Logger.root.onRecord.listen((record) {
        final sb = StringBuffer(
          '[${record.time}] [${_getLevelLabel(record.level.name)}]',
        );
        if (record.error != null && record.stackTrace != null) {
          if (record.loggerName.isNotEmpty) {
            sb.write(' [${record.loggerName}]');
          }
          sb
            ..write(' [${record.error}]')
            ..write(' Message: ${record.message}')
            ..write(' Exception: ${record.stackTrace}');
        } else if (record.error != null) {
          if (record.loggerName.isNotEmpty) {
            sb.write(' [${record.loggerName}]');
          }
          sb
            ..write(' [${record.error}]')
            ..write(' Message: ${record.message}');
        } else {
          if (record.loggerName.isNotEmpty) {
            sb.write(' [${record.loggerName}]');
          }
          sb.write(' Message: ${record.message}');
        }
        developer.log(sb.toString());
      });
    }

    if (kReleaseMode) {
      _logger.level = Level.OFF;
    }
  }

  @override
  void d({
    required String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (tag == null) {
      _logger.fine(message, error, stackTrace);
    } else {
      final l = Logger(tag);
      _logger.parent?.children.addAll({tag: l});
      l.fine(message, error, stackTrace);
    }
  }

  @override
  void e({
    required String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (tag == null) {
      _logger.severe(message, error, stackTrace);
    } else {
      final l = Logger(tag);
      _logger.parent?.children.addAll({tag: l});
      l.severe(message, error, stackTrace);
    }
  }

  @override
  void i({
    String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (tag == null) {
      _logger.info(message, error, stackTrace);
    } else {
      final l = Logger(tag);
      _logger.parent?.children.addAll({tag: l});
      l.info(message, error, stackTrace);
    }
  }

  @override
  void v({
    String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (tag == null) {
      _logger.finer(message, error, stackTrace);
    } else {
      final l = Logger(tag);
      _logger.parent?.children.addAll({tag: l});
      l.finer(message, error, stackTrace);
    }
  }

  @override
  void w({
    String? message,
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (tag == null) {
      _logger.warning(message, error, stackTrace);
    } else {
      final l = Logger(tag);
      _logger.parent?.children.addAll({tag: l});
      l.warning(message, error, stackTrace);
    }
  }

  String _getLevelLabel(String levelName) {
    switch (levelName) {
      case 'FINE':
        return 'Debug';
      case 'INFO':
        return 'Info';
      case 'WARNING':
        return 'Warning';
      case 'SEVERE':
        return 'Error';
      default:
        return 'Verbose';
    }
  }
}
