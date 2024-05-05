import 'package:dominic_flutter_template/src/features/settings/logic/settings_bloc.dart';
import 'package:dominic_flutter_template/src/utils/responsive_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class XScaffold extends StatelessWidget {
  const XScaffold({
    super.key,
    this.appBar,
    this.landscapeSmallScreen = const SizedBox(),
    this.landscapeMediumScreen = const SizedBox(),
    this.landscapeLargeScreen = const SizedBox(),
    this.portraitSmallScreen = const SizedBox(),
    this.portraitMediumScreen = const SizedBox(),
    this.portraitLargeScreen = const SizedBox(),
    this.child,
  });

  final PreferredSizeWidget? appBar;
  final Widget? child;
  final Widget landscapeSmallScreen;
  final Widget landscapeMediumScreen;
  final Widget landscapeLargeScreen;
  final Widget portraitSmallScreen;
  final Widget portraitMediumScreen;
  final Widget portraitLargeScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.safeArea
              ? SafeArea(
                  child: _buildWidget(),
                )
              : _buildWidget();
        },
      ),
    );
  }

  Widget _buildWidget() {
    if (child != null) {
      return child!;
    } else if (ResponsiveUtils.isLandscapeScreen()) {
      return _buildScreen(
        smallScreen: landscapeSmallScreen,
        mediumScreen: landscapeMediumScreen,
        largeScreen: landscapeLargeScreen,
      );
    } else {
      return _buildScreen(
        smallScreen: portraitSmallScreen,
        mediumScreen: portraitMediumScreen,
        largeScreen: portraitLargeScreen,
      );
    }
  }

  Widget _buildScreen({
    required Widget smallScreen,
    required Widget mediumScreen,
    required Widget largeScreen,
  }) {
    if (ResponsiveUtils.isSmallScreen()) {
      return smallScreen;
    } else if (ResponsiveUtils.isMediumScreen()) {
      return mediumScreen;
    } else {
      return largeScreen;
    }
  }
}
