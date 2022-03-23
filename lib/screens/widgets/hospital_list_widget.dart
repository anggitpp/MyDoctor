import 'package:flutter/material.dart';

import 'package:mydoctor/models/hospital.dart';
import 'package:mydoctor/shared/theme.dart';
import 'package:supercharged/supercharged.dart';

class HospitalListWidget extends StatelessWidget {
  final Hospital hospital;
  const HospitalListWidget({
    Key? key,
    required this.hospital,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: defaultMargin),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: '#EEEEEE'.toColor()))),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 60,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              image: DecorationImage(
                image:
                    AssetImage('assets/images/hospital/' + hospital.imageURL),
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          SizedBox(
            width: phoneWidth(context) - 80 - 2 * 16 - 16,
            height: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hospital.name,
                  style: mediumText,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  hospital.address,
                  style: smallText,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
