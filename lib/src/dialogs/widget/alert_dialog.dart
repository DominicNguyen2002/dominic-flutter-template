import 'dart:io';

import 'package:dominic_flutter_template/src/dialogs/widget/alert_button.dart';
import 'package:dominic_flutter_template/src/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class XAlertDialog extends StatelessWidget {
  const XAlertDialog({
    this.title,
    this.content,
    this.titleWidget,
    this.contentWidget,
    this.actions = const [],
    super.key,
  });
  final String? title;
  final String? content;
  final Widget? titleWidget;
  final Widget? contentWidget;
  final List<XAlertButton> actions;

  @override
  Widget build(BuildContext context) {
    final actionButtons = actions.isEmpty ? [XAlertButton.close()] : actions;
    if (kIsWeb || Platform.isAndroid) {
      return AlertDialog(
        title: titleWidget ?? (title == null ? null : Text(title!)),
        content: contentWidget ?? (content == null ? null : Text(content!)),
        actions: <Widget>[
          for (int i = 0; i < actionButtons.length; i++)
            _buildButton(context, actionButtons[i], i)
        ],
      );
    }
    return CupertinoAlertDialog(
      title: titleWidget ?? (title == null ? null : Text(title!)),
      content: contentWidget ?? (content == null ? null : Text(content!)),
      actions: <Widget>[
        for (int i = 0; i < actionButtons.length; i++)
          _buildButton(context, actionButtons[i], i)
      ],
    );
  }

  Widget _buildButton(
    BuildContext context,
    XAlertButton item,
    int index,
  ) {
    ThemeData theme = Theme.of(context);
    Color textColor = theme.textTheme.bodyLarge?.color ?? AppColors.textLight;

    if (kIsWeb || Platform.isAndroid) {
      return TextButton(
        key: Key('XAlertButton-$index-${item.key}'),
        onPressed: () {
          Navigator.of(context).pop(item.key);
        },
        child: item.child != null
            ? item.child!
            : Text(
                item.title ?? '',
                style: TextStyle(
                  color:
                      item.isDestructiveAction ? AppColors.red_500 : textColor,
                ),
              ),
      );
    }
    return CupertinoDialogAction(
      key: Key('XAlertButton-$index-${item.key}'),
      onPressed: () {
        Navigator.of(context).pop(item.key);
      },
      isDestructiveAction: item.isDestructiveAction,
      child: item.child != null ? item.child! : Text(item.title ?? ''),
    );
  }
}
