import 'package:dominic_flutter_template/src/themes/colors.dart';
import 'package:flutter/material.dart';

class AppStyles {
  AppStyles._();

  static const title = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static const titleLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static const titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static const body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const inputStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const labelStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const errorStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.red_500,
    letterSpacing: 0.25,
  );
}
