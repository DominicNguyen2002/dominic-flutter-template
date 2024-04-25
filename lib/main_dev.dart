import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:dominic_flutter_template/firebase_options/firebase_options.dart';
import 'package:dominic_flutter_template/src/locator.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';

Future main() async {
  await initializeApp(
    name: 'develop',
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
  );
  if (kIsWeb) {
    runApp(_previewApp());
  } else {
    FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    };
    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
    runApp(_previewApp());
  }
}

DevicePreview _previewApp() {
  return DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  );
}
