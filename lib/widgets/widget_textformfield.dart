import 'package:e_commerce_example/shared/uicolor.dart';
import 'package:flutter/material.dart';

class GetTextFormField extends StatelessWidget {
  final String? title;
  final String? label;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? requestFocus;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;
  final int? maxLength;
  final int? maxLines;
  final bool? enabled;
  final double? radius;
  final String? hint;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function? onChanged;

  // ignore: use_key_in_widget_constructors
  const GetTextFormField({
    this.title,
    this.label,
    this.focusNode,
    this.keyboardType,
    this.textInputAction,
    this.requestFocus,
    this.validator,
    this.controller,
    required this.obscureText,
    this.maxLength,
    this.maxLines,
    this.enabled,
    this.radius,
    this.hint,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      cursorColor: UIColor.primaryGreen,
      focusNode: focusNode,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onFieldSubmitted: (v) {
        if (requestFocus != null) {
          FocusScope.of(context).requestFocus(requestFocus);
        }
      },
      controller: controller,
      obscureText: obscureText,
      maxLines: maxLines ?? 1,
      validator: validator,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          hintStyle: const TextStyle(fontWeight: FontWeight.w300),
          prefixIcon: prefixIcon),
    );
  }
}
