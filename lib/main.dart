import 'dart:async';

import 'package:dominic_flutter_template/src/locator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';

Future main() async {
  await initializeApp(name: 'production');
  if (kIsWeb) {
    runApp(const MyApp());
  } else {
    runApp(const MyApp());
  }
}
