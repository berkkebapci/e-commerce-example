// ignore_for_file: use_key_in_widget_constructors

import 'package:e_commerce_example/shared/uicolor.dart';
import 'package:flutter/material.dart';

class TextBasic extends StatelessWidget {
  final String text;
  final Color? color;
  final String? fontFamily;
  final double? fontSize;
  final double? lineHeight;
  final bool? underline;
  final TextAlign? textAlign;
  final int? maxLines;
  final double? letterSpacing;
  final FontWeight? fontWeight;

  const TextBasic(
      {required this.text,
      this.color,
      this.fontFamily,
      this.fontSize,
      this.lineHeight,
      this.underline = false,
      this.textAlign,
      this.maxLines,
      this.letterSpacing,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      maxLines: maxLines ?? 999,
      textScaleFactor: 1.0,
      style: TextStyle(
        color: color ?? UIColor.primaryGreen,
        fontSize: fontSize,
        decoration: underline! ? TextDecoration.underline : null,
        fontWeight: fontWeight ?? FontWeight.w400,
        height: lineHeight ?? 1.2,
        letterSpacing: letterSpacing ?? 1,
      ),
    );
  }
}

