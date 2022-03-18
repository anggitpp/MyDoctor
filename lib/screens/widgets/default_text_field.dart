import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

import 'package:mydoctor/shared/theme.dart';

class DefaultTextField extends StatelessWidget {
  final String label;
  final bool isPassword;

  const DefaultTextField({
    Key? key,
    required this.label,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: mediumText.copyWith(color: grayColor),
        ),
        SizedBox(
          height: 6,
        ),
        SizedBox(
          child: TextField(
            obscureText: isPassword,
            style: mediumText,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: '#0066CB'.toColor(),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: lightGrayColor),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}