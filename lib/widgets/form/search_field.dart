import 'package:dominic_flutter_template/src/utils/utils.dart';
import 'package:flutter/material.dart';

class XSearchField<T> extends StatelessWidget {
  const XSearchField({
    super.key,
    this.onShowSearch,
    this.value,
    this.child,
    this.validator,
  });

  final T? value;
  final VoidCallback? onShowSearch;
  final Widget? child;
  final FormFieldValidator<T>? validator;

  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      initialValue: value,
      builder: (FormFieldState<T> field) {
        return Focus(
          canRequestFocus: false,
          skipTraversal: true,
          child: Builder(
            builder: (context) {
              final InputDecoration effectiveDecoration =
                  const InputDecoration().applyDefaults(
                Theme.of(field.context).inputDecorationTheme,
              );
              return InputDecorator(
                decoration:
                    effectiveDecoration.copyWith(errorText: field.errorText),
                isEmpty: isNullOrEmpty(value),
                isFocused: Focus.of(context).hasFocus,
                child: GestureDetector(
                    onTap: this.onShowSearch, child: this.child),
              );
            },
          ),
        );
      },
    );
  }
}
