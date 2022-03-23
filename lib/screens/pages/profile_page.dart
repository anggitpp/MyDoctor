import 'package:flutter/material.dart';
import 'package:mydoctor/screens/widgets/default_button.dart';
import 'package:mydoctor/screens/widgets/default_header.dart';
import 'package:mydoctor/screens/widgets/profile_page_box.dart';
import 'package:mydoctor/shared/theme.dart';
import 'package:supercharged/supercharged.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          DefaultHeader(text: 'Profile'),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 130,
            height: 130,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: lightGrayColor, width: 1),
            ),
            child: Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/people.png',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Shayna Melinda',
            style: largeText,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Product Designer',
            style: smallText.copyWith(fontSize: 16),
          ),
          SizedBox(
            height: 30,
          ),
          ProfilePageBox(),
          ProfilePageBox(),
          SizedBox(
            height: 50,
          ),
          DefaultButton(text: 'Sign Out', onTap: () {})
        ],
      )),
    );
  }
}
