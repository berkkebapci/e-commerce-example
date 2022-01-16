import 'package:e_commerce_example/shared/uicolor.dart';
import "package:flutter/material.dart";

class BasicButton extends StatelessWidget {
  final String buttonText;
  final Color? backgroundColor;
  final Color? textColor;
  final double? buttonHeight;
  final double radius;
  final FontWeight? fontWeight;
  final Function()? onTap;

  const BasicButton({
    Key? key,
    required this.buttonText,
    this.backgroundColor,
    this.textColor,
    this.buttonHeight = 40,
    this.radius = 10,
    this.onTap,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: UIColor.primaryGreen,
        ),
        height: buttonHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(color: textColor,fontWeight: fontWeight),
          ),
        ),
      ),
    );
  }
}
