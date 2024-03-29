import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

import 'package:mydoctor/shared/theme.dart';

class DefaultTextField extends StatelessWidget {
  final String label;
  final bool isPassword;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  const DefaultTextField({
    Key? key,
    required this.label,
    this.isPassword = false,
    this.controller,
    this.onChanged,
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
        const SizedBox(
          height: 6,
        ),
        SizedBox(
          child: TextField(
            controller: controller,
            obscureText: isPassword,
            style: mediumText,
            onChanged: onChanged,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(12),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: '#0066CB'.toColor(),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
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
