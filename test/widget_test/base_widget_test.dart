import 'package:flutter/material.dart';

class XWidgetTest extends StatelessWidget {
  const XWidgetTest({
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
