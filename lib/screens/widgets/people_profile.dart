import 'package:flutter/material.dart';

import 'package:mydoctor/shared/theme.dart';

class PeopleProfile extends StatelessWidget {
  final String image;
  final String name;
  final String role;
  final double? star;
  final bool isOnline;

  const PeopleProfile({
    Key? key,
    required this.image,
    required this.name,
    required this.role,
    this.star,
    this.isOnline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/' + image),
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              isOnline
                  ? Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 12,
                        height: 12,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Container(
                          width: 8,
                          height: 8,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: secondaryColor, shape: BoxShape.circle),
                        ),
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: mediumText.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              role,
              style: smallText,
            )
          ],
        ),
      ],
    );
  }
}
