import 'package:dominic_flutter_template/src/themes/themes.dart';
import 'package:flutter/material.dart';

class AppStyles {
  AppStyles._();

  static final title = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppThemes.textColor,
  );
  static final titleLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppThemes.textColor,
  );
  static final titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppThemes.textColor,
  );

  static final body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppThemes.textColor,
  );

  static final inputStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppThemes.textColor,
  );
}
