import 'package:dominic_flutter_template/src/localization/localization_utils.dart';
import 'package:flutter/material.dart';

class XAlertButton<T> {
  final String? title;
  final Widget? child;
  final T? key;
  final bool isDestructiveAction;

  XAlertButton({
    this.key,
    this.title,
    this.child,
    this.isDestructiveAction = false,
  }) : assert(title != null || child != null);

  factory XAlertButton.close({String? title}) {
    return XAlertButton(title: title ?? S.text.common_close);
  }
}
