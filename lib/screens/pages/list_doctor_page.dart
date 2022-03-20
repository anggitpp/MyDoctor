import 'package:flutter/material.dart';
import 'package:mydoctor/models/doctor.dart';
import 'package:mydoctor/screens/widgets/default_header.dart';
import 'package:mydoctor/screens/widgets/people_profile.dart';
import 'package:mydoctor/shared/theme.dart';
import 'package:supercharged/supercharged.dart';

class ListDoctorPage extends StatelessWidget {
  const ListDoctorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 90,
                width: phoneWidth(context),
                padding: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: DefaultHeader(
                  text: 'Pilih Dokter Anak',
                  arrowColor: Colors.white,
                  textStyle: largeText.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: ListView.builder(
                  itemCount: dummyDoctors.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    Doctor data = dummyDoctors[index];
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: index == 0 ? 0 : 16,
                              bottom:
                                  index == dummyDoctors.length - 1 ? 16 : 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PeopleProfile(
                                image: 'images/doctor/' + data.imageURL,
                                name: data.name,
                                role: data.gender == 'F' ? 'Wanita' : 'Pria',
                              ),
                              Icon(
                                Icons.chevron_right,
                                size: 24,
                                color: grayColor,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: phoneWidth(context),
                          height: 1,
                          color: '#EEEEEE'.toColor(),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
