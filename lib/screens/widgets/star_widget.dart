import 'package:flutter/material.dart';

import 'package:mydoctor/shared/theme.dart';

class StarWidget extends StatelessWidget {
  final double star;

  const StarWidget({
    Key? key,
    required this.star,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 1; i <= 5; i++)
          Padding(
            padding: const EdgeInsets.only(
              right: 2,
            ),
            child: Icon(
              Icons.star,
              color: star.round() >= i ? yellowColor : lightGrayColor,
              size: 16,
            ),
          ),
      ],
    );
  }
}
