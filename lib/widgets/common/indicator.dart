import 'dart:io';
import 'package:dominic_flutter_template/src/themes/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class XIndicator extends StatelessWidget {
  const XIndicator({
    this.radius = 15,
    this.color,
    super.key,
  });
  
  final double radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb || Platform.isAndroid) {
      return SizedBox(
        width: radius * 2,
        height: radius * 2,
        child: CircularProgressIndicator(
          backgroundColor: color ?? AppThemes.theme.colorScheme.onBackground,
          strokeWidth: 1.5,
        ),
      );
    }
    return CupertinoActivityIndicator(
      radius: radius,
      color: color ?? AppThemes.theme.colorScheme.onBackground,
    );
  }
}
