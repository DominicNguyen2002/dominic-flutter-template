import 'package:dominic_flutter_template/src/helpers/logger.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'error_code.dart';

class MResult<T> {
  T? data;
  String? error;

  MResult.exception(Object? e) {
    data = null;
    if (e is PlatformException) {
      error = e.message;
      XLogger.error(
        error: error,
        type: 'Exception',
        title: 'PlatformException',
      );
    } else if (e is AssertionError) {
      error = e.message?.toString();
      XLogger.error(
        error: error,
        title: 'AssertionError',
      );
    } else if (e is FlutterError) {
      error = e.message;
      XLogger.error(
        error: error,
        title: 'FlutterError',
      );
    } else if (e is FirebaseException) {
      error = e.message;
      XLogger.error(
        error: error,
        title: 'FirebaseException',
        type: 'Exception',
      );
    }
    error ??= MErrorCode.unknown;
    XLogger.error(error: error);
  }

  MResult.error(String? error) {
    data = null;
    this.error = error ?? '';
    XLogger.error(error: error ?? 'error');
  }

  MResult.success(this.data) {
    error = null;
  }

  bool get isError => error != null;
  bool get isSuccess => !isError;
}
