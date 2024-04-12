import 'package:dominic_flutter_template/src/configs/devices/app_info.dart';
import 'package:dominic_flutter_template/src/router/router.dart';
import 'package:dominic_flutter_template/src/services/shared_prefs.dart';
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
    SharedPrefs.instance.initialize(),
    AppInfo.initialize(),
  ]);
}

void _locator() {
  GetIt.I.registerLazySingleton(() => AppRouter());
}
