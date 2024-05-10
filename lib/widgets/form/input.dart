import 'package:dominic_flutter_template/src/themes/icons.dart';
import 'package:dominic_flutter_template/src/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class XInput extends StatefulWidget {
  const XInput({
    super.key,
    required this.value,
    this.keyboardType,
    required this.obscureText,
    this.onChanged,
    this.decoration,
    this.maxLength,
    required this.autofocus,
    required this.textAlign,
    this.style,
    this.inputFormatters,
    this.onFieldSubmitted,
    this.labelStyle,
    this.errorStyle,
  });

  final String value;
  final TextInputType? keyboardType;
  final bool obscureText;

  final ValueChanged<String>? onChanged;
  final InputDecoration? decoration;
  final int? maxLength;
  final bool autofocus;
  // style
  final TextAlign textAlign;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final TextStyle? errorStyle;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onFieldSubmitted;

  @override
  State<XInput> createState() => _XInputState();
}

class _XInputState extends State<XInput> {
  late TextEditingController _controller;
  String get value => widget.value;
  bool obscureText = false;

  @override
  void initState() {
    super.initState();
    obscureText = widget.obscureText;
    _controller = TextEditingController(text: widget.value);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(XInput oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (_controller.text != widget.value) {
      _controller.text = widget.value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      onChanged: widget.onChanged,
      keyboardType: widget.keyboardType,
      style: widget.style,
      textAlign: widget.textAlign,
      obscureText: obscureText,
      maxLength: widget.maxLength,
      autofocus: widget.autofocus,
      scrollPhysics: const NeverScrollableScrollPhysics(),
      inputFormatters: widget.inputFormatters,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: (widget.decoration ?? const InputDecoration()).copyWith(
        prefixIcon: widget.textAlign == TextAlign.center
            ? const SizedBox(width: 24)
            : null,
        labelStyle: widget.labelStyle ?? AppStyles.labelStyle,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        filled: false,
        errorStyle: widget.errorStyle ?? AppStyles.errorStyle,
        suffixIcon: _buildActions(),
      ),
    );
  }

  Widget? _buildActions() {
    final List<Widget> actions = [];
    if (value.isNotEmpty) {
      actions.add(
        InkWell(
          onTap: () {
            widget.onChanged?.call('');
          },
          child: const Icon(Icons.cancel),
        ),
      );
    }
    if (widget.obscureText) {
      actions.add(
        IconButton(
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          icon: Icon(
            obscureText
                ? AppIcons.visibilityOutlined
                : AppIcons.visibilityOffOutlined,
          ),
        ),
      );
    }

    if (actions.isEmpty) {
      return null;
    }
    if (actions.length == 1) {
      return actions[0];
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: actions,
    );
  }
}
