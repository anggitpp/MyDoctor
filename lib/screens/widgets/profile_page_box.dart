import 'package:flutter/material.dart';
import 'package:mydoctor/shared/theme.dart';

class ProfilePageBox extends StatelessWidget {
  const ProfilePageBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: phoneWidth(context),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: veryLightGrayColor))),
      child: Row(
        children: [
          Icon(
            Icons.people,
            color: secondaryColor,
            size: 20,
          ),
          SizedBox(
            width: defaultMargin,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Edit Profile',
                style: mediumText,
              ),
              Text(
                'Last updated yesterday',
                style: smallText,
              )
            ],
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: grayColor,
          )
        ],
      ),
    );
  }
}
