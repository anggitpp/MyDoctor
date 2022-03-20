import 'package:flutter/material.dart';

import 'package:mydoctor/shared/theme.dart';

class DefaultButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final Function() onTap;

  const DefaultButton({
    Key? key,
    this.backgroundColor,
    this.textColor,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: phoneWidth(context) - 2 * 40,
      height: 45,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: backgroundColor ?? secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: largeText.copyWith(
            color: textColor ?? Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
