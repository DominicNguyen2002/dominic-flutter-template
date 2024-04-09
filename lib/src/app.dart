import 'package:dominic_flutter_template/src/localization/localization_utils.dart';
import 'package:dominic_flutter_template/src/themes/screen.dart';
import 'package:dominic_flutter_template/src/themes/themes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppScreens.mediaQuery = MediaQuery.of(context);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: S.localizationsDelegates,
      supportedLocales: S.supportedLocales,
      onGenerateTitle: (BuildContext context) => S.of(context).common_appTitle,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
    );
  }
}
