import 'package:dominic_flutter_template/src/themes/screen.dart';
import 'package:dominic_flutter_template/src/themes/themes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    AppScreens.mediaQuery = MediaQuery.of(context);

    return MaterialApp.router(
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
    );
  }
}
