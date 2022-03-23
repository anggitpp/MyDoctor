import 'package:flutter/material.dart';

import 'package:mydoctor/shared/theme.dart';
import 'package:supercharged/supercharged.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final bool isActive;
  final Color? backgroundColor;
  final Color? textColor;

  const DefaultButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.isActive = true,
    this.backgroundColor,
    this.textColor,
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
          primary: backgroundColor ??
              (isActive ? secondaryColor : '#EDEEF0'.toColor()),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: largeText.copyWith(
            color: textColor ?? (isActive ? Colors.white : '#B1B7C2'.toColor()),
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
