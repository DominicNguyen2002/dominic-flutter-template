import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';

Future main() async {
  if (kIsWeb) {
    runApp(const MyApp());
  } else {
    runApp(const MyApp());
  }
}
