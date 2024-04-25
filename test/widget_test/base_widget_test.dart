import 'package:flutter/material.dart';

class BaseWidgetTest extends StatelessWidget {
  const BaseWidgetTest({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: child,
        ),
      ),
    );
  }
}
