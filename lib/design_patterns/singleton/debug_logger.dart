import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

abstract class BaseLogger {
  @protected
  late Logger? _logger;
  @protected
  final _dateFormatter = DateFormat('H:m:s.S');

  void log(message, [Object? error, StackTrace? stackTrace]) =>
      _logger?.i(message, error: error, stackTrace: stackTrace);
}

class DebugLogger extends BaseLogger {
  static DebugLogger? _instance;

  DebugLogger._internal() {
    Logger.level = Level.all;
    Logger.addLogListener(_recordHandler);

    _logger = Logger();
    _instance = this;
  }

  factory DebugLogger() => _instance ?? DebugLogger._internal();

  void _recordHandler(LogEvent event) =>
      debugPrint('${_dateFormatter.format(event.time)}: ${event.message}');
}
