import 'package:flutter/material.dart';

import 'package:mydoctor/shared/theme.dart';

class DefaultHeader extends StatelessWidget {
  final String text;
  const DefaultHeader({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back,
            color: primaryColor,
            size: 24,
          ),
          Text(
            text,
            style: largeText,
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
    );
  }
}
