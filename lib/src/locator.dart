import 'package:dominic_flutter_template/src/router/router.dart';
import 'package:dominic_flutter_template/src/services/user_prefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

Future initializeApp({
  String? name,
}) async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  _locator();
   await Future.wait([
    UserPrefs.instance.initialize(),
  ]);
}

void _locator() {
  GetIt.I.registerLazySingleton(() => AppRouter());
}
