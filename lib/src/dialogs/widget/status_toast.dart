import 'package:dominic_flutter_template/src/themes/colors.dart';
import 'package:flutter/material.dart';

class XStatusToast extends StatelessWidget {
  const XStatusToast(
    this.message, {
    this.icon,
    super.key,
  });
  final Widget? icon;
  final String? message;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: const EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: AppColors.black,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[icon!, const SizedBox(width: 4)],
          Flexible(
            child: Text(
              message ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                color: AppColors.white,
                fontSize: 15,
                letterSpacing: 0.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
