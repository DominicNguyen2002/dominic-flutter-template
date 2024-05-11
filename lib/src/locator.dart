import 'package:dominic_flutter_template/src/configs/devices/app_info.dart';
import 'package:dominic_flutter_template/src/helpers/logger.dart';
import 'package:dominic_flutter_template/src/network/domain_manager.dart';
import 'package:dominic_flutter_template/src/router/router.dart';
import 'package:dominic_flutter_template/src/services/shared_prefs.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

Future initializeApp({
  String? name,
  FirebaseOptions? firebaseOptions,
}) async {
  XLogger.initApp(name);
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  _locator();
  await Firebase.initializeApp(
    name: name,
    options: firebaseOptions,
  );
  await Future.wait([
    SharedPrefs.instance.initialize(),
    AppInfo.initialize(),
  ]);
}

void _locator() {
  GetIt.I.registerLazySingleton(() => AppRouter());
  GetIt.I.registerLazySingleton(() => DomainManager());
}
