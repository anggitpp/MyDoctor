import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

import 'package:mydoctor/models/doctor.dart';
import 'package:mydoctor/shared/theme.dart';

class MessagePageBox extends StatelessWidget {
  final Doctor doctor;
  final String message;
  const MessagePageBox({
    Key? key,
    required this.doctor,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultMargin),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: veryLightGrayColor,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/doctor/' + doctor.imageURL),
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctor.name,
                style: mediumText,
              ),
              Container(
                width: phoneWidth(context) - 2 * 16 - 70,
                child: Text(
                  message,
                  style: smallText,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
