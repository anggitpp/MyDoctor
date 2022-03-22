import 'package:flutter/material.dart';
import 'package:mydoctor/shared/theme.dart';
import 'package:supercharged/supercharged.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              width: phoneWidth(context),
              height: 107,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nairobi Putri Hayza',
                        style: largeText.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Dokter Anak',
                        style: smallText.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                  Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/doctor/doctor-1.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 110),
              width: phoneWidth(context),
              height: phoneHeight(context) - 260,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'Senin, 21 Maret, 2020',
                          style: smallText.copyWith(fontSize: 11),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                width: phoneWidth(context) - 150,
                                decoration: BoxDecoration(
                                    color: lightBlueColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    )),
                                child: Text(
                                  'Ibu dokter, apakah memakan jeruk tiap hari itu buruk?',
                                  style: mediumText.copyWith(fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '4.20 AM',
                                style: smallText.copyWith(fontSize: 11),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/doctor/doctor-1.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    width: phoneWidth(context) - 150,
                                    decoration: BoxDecoration(
                                        color: secondaryColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        )),
                                    child: Text(
                                      'Oh tentu saja tidak karena jeruk itu sangat sehat...',
                                      style: mediumText.copyWith(
                                          fontSize: 14, color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    '4.20 AM',
                                    style: smallText.copyWith(fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.fromLTRB(16, 0, 16, 26),
                height: 50,
                width: phoneWidth(context),
                child: Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: phoneWidth(context) - 2 * 16 - 45 - 10,
                      child: TextField(
                        style: mediumText.copyWith(fontSize: 14),
                        decoration: InputDecoration(
                          fillColor: '#EDEEF0'.toColor(),
                          filled: true,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Tulis pesan untuk Nairobi',
                          hintStyle: smallText.copyWith(
                              fontSize: 14, color: '#B1B7C2'.toColor()),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      padding: EdgeInsets.only(left: 5, bottom: 2),
                      decoration: BoxDecoration(
                        color: 'EDEEF0'.toColor(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage(
                                    'assets/icons/send-message-inactive.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
