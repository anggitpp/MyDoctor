import 'package:flutter/material.dart';
import 'package:mydoctor/models/doctor.dart';
import 'package:mydoctor/screens/widgets/default_header.dart';
import 'package:mydoctor/screens/widgets/message_page_box.dart';
import 'package:mydoctor/shared/theme.dart';
import 'package:supercharged/supercharged.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            DefaultHeader(text: 'Messages'),
            ListView.builder(
              shrinkWrap: true,
              itemCount: dummyDoctors.length,
              itemBuilder: (context, index) {
                return MessagePageBox(
                    doctor: dummyDoctors[index],
                    message:
                        'Baik ibu, terima kasih banyak atas waktu atas waktu atas waktu');
              },
            ),
          ],
        ),
      ),
    );
  }
}
