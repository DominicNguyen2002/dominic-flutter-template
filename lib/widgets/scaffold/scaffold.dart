import 'package:dominic_flutter_template/src/features/settings/logic/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class XScaffold extends StatelessWidget {
  const XScaffold({
    super.key,
    this.appBar,
    required this.child,
  });

  final PreferredSizeWidget? appBar;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.safeArea
              ? SafeArea(
                  child: child,
                )
              : child;
        },
      ),
    );
  }
}
