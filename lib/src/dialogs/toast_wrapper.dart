import 'package:bot_toast/bot_toast.dart';
import 'package:dominic_flutter_template/src/themes/colors.dart';
import 'package:dominic_flutter_template/src/themes/icons.dart';
import 'package:flutter/material.dart';

import 'widget/loading_alert.dart';
import 'widget/status_toast.dart';

class XToast {
  static CancelFunc? loadingCancel;
  static get isShowLoading => loadingCancel != null;

  static void show(String? message) {
    BotToast.showText(text: message ?? '');
  }

  static showLoading() {
    if (isShowLoading == false) {
      loadingCancel = BotToast.showCustomLoading(
        toastBuilder: (_) => const XLoadingAlert(),
        crossPage: true,
        ignoreContentClick: true,
      );
    }
  }

  static hideLoading() {
    if (isShowLoading) {
      loadingCancel?.call();
      loadingCancel = null;
    }
  }

  static void success(String? message) {
    _showMessage(
      const Icon(
        AppIcons.checkCircle,
        color: AppColors.green_400,
        size: 20,
      ),
      message,
    );
  }

  static void error(String? message) {
    _showMessage(
      const Icon(
        AppIcons.error,
        color: AppColors.red_500,
        size: 20,
      ),
      message,
    );
  }

  static void _showMessage(
    Widget icon,
    String? message,
  ) {
    BotToast.showCustomText(
      toastBuilder: (_) => XStatusToast(
        message,
        icon: icon,
      ),
      align: const Alignment(0, -0.8),
    );
  }
}
