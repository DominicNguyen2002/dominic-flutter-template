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
      'Building space: $namePage',
      error: 'Debug',
    );
  }

  static warning({
    required String warning,
    String title = 'Warning',
    String type = 'Warning',
  }) {
    _logger.w(
      '$type: $warning.',
      error: title,
    );
  }

  static error({
    required String error,
    String title = 'Error',
    String type = 'Error',
  }) {
    _logger.e(
      '$type: $error.',
      error: title,
    );
  }
}
