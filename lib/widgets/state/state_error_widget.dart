import 'package:dominic_flutter_template/gen/assets.gen.dart';
import 'package:dominic_flutter_template/src/localization/localization_utils.dart';
import 'package:dominic_flutter_template/src/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class XStateErrorWidget extends StatelessWidget {
  const XStateErrorWidget({
    super.key,
    this.onTap,
  });
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(Assets.svgs.stateError),
        const SizedBox(height: 15),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Text(
            S.text.error_somethingWrongTryAgain,
            textAlign: TextAlign.center,
            style: AppStyles.title,
          ),
        ),
        const SizedBox(height: 15),
        /**
         * TODO: add button tap to refresh
        Center(
          child: OutlinedButton(
            title: S.text.common_tap_to_refresh,
            onPressed: onTap,
          ),
        ),
        */
      ],
    );
  }
}
