import 'package:logger/logger.dart';

class LogHelper {
  static LogHelper get instance => LogHelper();
  var logger = Logger(
    printer: PrettyPrinter(
      methodCount: 3,
      lineLength: 90,
    ),
  );

  void debugLog(dynamic data) => logger.d(data, stackTrace: StackTrace.empty);

  void infoLog(dynamic data) => logger.i(data, stackTrace: StackTrace.empty);

  void errorLog(
    dynamic data, {
    required Object err,
  }) =>
      logger.e(data, error: err, stackTrace: StackTrace.current);
}
