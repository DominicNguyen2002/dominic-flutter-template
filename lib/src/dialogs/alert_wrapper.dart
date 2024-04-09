import 'package:dominic_flutter_template/src/dialogs/widget/alert_button.dart';
import 'package:dominic_flutter_template/src/dialogs/widget/alert_dialog.dart';
import 'package:dominic_flutter_template/src/localization/localization_utils.dart';
import 'package:dominic_flutter_template/src/router/coordinator.dart';
import 'package:flutter/material.dart';


class XAlert {
  static get context => AppCoordinator.context;

  /// show the dialog
  static Future<String?> show({
    String? title,
    String? body,
    List<XAlertButton> actions = const [],
  }) async {
    return showDialog<String>(
      context: context,
      builder: (context) {
        return XAlertDialog(
          title: title,
          content: body,
          actions: actions,
        );
      },
    );
  }

  /// Shows a confirmation dialog
  Future showCustomAlert({
    Widget? title,
    Widget? body,
    List<XAlertButton> actions = const [],
  }) async {
    return showDialog<String>(
      context: context,
      builder: (context) {
        return XAlertDialog(
          titleWidget: title,
          contentWidget: body,
          actions: actions,
        );
      },
    );
  }

  static Future<bool?> showConfirmDialog(
    String? title,
    String? content, {
    String? textNo,
    String? textYes,
  }) {
    return showDialog<bool?>(
      context: context,
      builder: (context) {
        return XAlertDialog(
          title: title,
          content: content,
          actions: [
            XAlertButton<bool>(
              isDestructiveAction: true,
              key: false,
              title: textNo ?? S.text.common_no,
            ),
            XAlertButton<bool>(
              key: true,
              title: textYes ?? S.text.common_yes,
            ),
          ],
        );
      },
    );
  }

  // TODO: update later
  // static Future showForceUpdate() {
  //   return showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     builder: (BuildContext context) {
  //       return const Dialog(
  //         child: PopupForceUpdateApp(),
  //       );
  //     },
  //   );
  // }
}
