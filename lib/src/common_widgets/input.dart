import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({
    super.key,
    required this.icon,
    required this.hintText,
    required this.keyboardType,
    this.isPassword = false,
    this.controller,
    this.onChanged,
  });

  final Icon icon;
  final String hintText;
  final TextInputType keyboardType;
  final bool isPassword;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  var _showPassword = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      textAlignVertical: TextAlignVertical.center,
      obscureText: widget.isPassword ? !_showPassword : false,
      decoration: InputDecoration(
        isDense: true,
        hintText: widget.hintText,
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () => setState(() => _showPassword = !_showPassword),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(
                    _showPassword
                        ? FeastlyIcon.icon_hide_eye
                        : Icons.visibility_outlined,
                    size: 20.0,
                    color: theme.extension<CustomColor>()!.textColor!,
                  ),
                ),
              )
            : null,
        hintStyle: theme.extension<CustomTextTheme>()!.body16Regular!,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 20, right: 10.0),
          child: widget.icon,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(
            color: theme.extension<CustomColor>()!.lightGrey!,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(
            color: theme.extension<CustomColor>()!.lightGrey!,
            width: 2,
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
      ),
    );
  }
}
