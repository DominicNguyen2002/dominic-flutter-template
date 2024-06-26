import 'package:flutter/material.dart';

class XTextFieldTitle extends StatelessWidget {
  const XTextFieldTitle(this.title, {super.key, this.child});

  final String title;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        ),
        if (child != null) child!,
      ],
    );
  }
}
