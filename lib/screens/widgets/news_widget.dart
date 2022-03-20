import 'package:flutter/material.dart';
import 'package:mydoctor/models/news.dart';
import 'package:supercharged/supercharged.dart';

import 'package:mydoctor/shared/theme.dart';

class NewsWidget extends StatelessWidget {
  final News news;
  const NewsWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: phoneWidth(context) - 2 * defaultMargin - 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      news.title,
                      style: mediumText,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Today',
                      style: smallText,
                    )
                  ],
                ),
              ),
              Container(
                width: 80,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  image: DecorationImage(
                    image: AssetImage('assets/images/news/' + news.imageURL),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          width: phoneWidth(context),
          height: 1,
          color: '#EEEEEE'.toColor(),
        ),
        SizedBox(
          height: 14,
        ),
      ],
    );
  }
}
