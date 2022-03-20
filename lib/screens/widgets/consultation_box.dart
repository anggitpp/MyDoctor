import 'package:flutter/material.dart';

import 'package:mydoctor/models/consultation_category.dart';
import 'package:mydoctor/shared/theme.dart';

class ConsultationBox extends StatelessWidget {
  final ConsultationCategory category;

  const ConsultationBox({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 130,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: lightBlueColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icons/' + category.imageURL,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Saya butuh',
                style: smallText.copyWith(
                  color: primaryColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                category.name,
                style: smallText.copyWith(
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
