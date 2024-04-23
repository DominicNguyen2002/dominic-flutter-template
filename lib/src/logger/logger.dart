import 'package:logger/logger.dart';

class XLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
      printTime: false,
    ),
  );

  static initApp(String? state) {
    _logger.i(
      'App started with $state flavor.',
      error: 'Running app',
    );
  }

  static buildingPage({required String namePage}) {
    _logger.d(
      'Building page: $namePage',
      error: 'Debug',
    );
  }

  static warning({
    String? warning,
    String? title,
    String? type,
  }) {
    _logger.w(
      '${type ?? 'Warning'}: $warning.',
      error: title ?? 'Warning',
    );
  }

  static error({
    String? error,
    String? title,
    String? type,
  }) {
    _logger.e(
      '${type ?? 'Error'}: $error.',
      error: title ?? 'Error',
    );
  }
}
