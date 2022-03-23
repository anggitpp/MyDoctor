import 'package:flutter/material.dart';

import 'package:mydoctor/shared/theme.dart';

class DoctorProfileBox extends StatelessWidget {
  final String title;
  final String text;
  const DoctorProfileBox({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: phoneWidth(context),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: lightGrayColor),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: mediumText.copyWith(color: grayColor),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            text,
            style: mediumText,
          ),
        ],
      ),
    );
  }
}
