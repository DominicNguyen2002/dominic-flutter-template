import 'package:flutter/material.dart';

extension TimeOfDayExtensions on TimeOfDay {
  String get getString =>
      '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
}
