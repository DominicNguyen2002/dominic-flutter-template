// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_production.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCO9N5lf3evsG8gXVUH_3aqxXnpAgKLEYE',
    appId: '1:675253405411:web:0c29d472e304ca4febe7d6',
    messagingSenderId: '675253405411',
    projectId: 'flutter-template-product-ea11d',
    authDomain: 'flutter-template-product-ea11d.firebaseapp.com',
    storageBucket: 'flutter-template-product-ea11d.appspot.com',
    measurementId: 'G-ZMBZ7FB0G6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAdJgrYC6-_64cKkO_ZPUGjpN6w4GuIqgw',
    appId: '1:675253405411:android:1859a9ae2b88c78cebe7d6',
    messagingSenderId: '675253405411',
    projectId: 'flutter-template-product-ea11d',
    storageBucket: 'flutter-template-product-ea11d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCFIWJoj5_FPC0Na_wB-nnLtRtYbU1S5o4',
    appId: '1:675253405411:ios:1935a8f59738c6f9ebe7d6',
    messagingSenderId: '675253405411',
    projectId: 'flutter-template-product-ea11d',
    storageBucket: 'flutter-template-product-ea11d.appspot.com',
    iosBundleId: 'com.example.dominicFlutterTemplate',
  );
}
