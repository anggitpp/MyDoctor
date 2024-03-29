import 'package:flutter/material.dart';

import 'package:mydoctor/shared/theme.dart';

class DefaultHeader extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Color? arrowColor;
  final Function()? backFunction;
  const DefaultHeader({
    Key? key,
    required this.text,
    this.textStyle,
    this.arrowColor,
    this.backFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: backFunction,
            child: Icon(
              Icons.arrow_back,
              color: arrowColor ?? primaryColor,
              size: 24,
            ),
          ),
          Text(
            text,
            style: textStyle ?? largeText,
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
    );
  }
}
