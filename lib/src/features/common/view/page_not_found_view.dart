import 'package:dominic_flutter_template/gen/assets.gen.dart';
import 'package:dominic_flutter_template/src/features/settings/logic/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class PageNotFoundView extends StatelessWidget {
  const PageNotFoundView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return SizedBox(
            width: size.width,
            height: size.height,
            child: Lottie.asset(
              state.themeMode == ThemeMode.dark
                  ? Assets.lotties.pageNotFoundDarkAnimation
                  : Assets.lotties.pageNotFoundLightAnimation,
            ),
          );
        },
      ),
    );
  }
}
