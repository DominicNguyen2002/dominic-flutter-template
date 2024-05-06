// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_staging.dart';
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
    apiKey: 'AIzaSyBYuVL-giQbfDwO6ASmQKsHb6ykyeUWzCI',
    appId: '1:1046231049930:web:701ccbb289c8d4c2ff7633',
    messagingSenderId: '1046231049930',
    projectId: 'flutter-template-staging-fe8aa',
    authDomain: 'flutter-template-staging-fe8aa.firebaseapp.com',
    storageBucket: 'flutter-template-staging-fe8aa.appspot.com',
    measurementId: 'G-ZFYFRTFG9X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSNbFPfzzML0HRq4tZMWWbs7NdQ_7b6Jw',
    appId: '1:1046231049930:android:b2177bc938be2826ff7633',
    messagingSenderId: '1046231049930',
    projectId: 'flutter-template-staging-fe8aa',
    storageBucket: 'flutter-template-staging-fe8aa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCYJXU1hypkaH7Rl-uIHL9YRiTC32t1eFw',
    appId: '1:1046231049930:ios:d7c062485ef10b65ff7633',
    messagingSenderId: '1046231049930',
    projectId: 'flutter-template-staging-fe8aa',
    storageBucket: 'flutter-template-staging-fe8aa.appspot.com',
    iosBundleId: 'com.example.dominicFlutterTemplate.stg',
  );
}