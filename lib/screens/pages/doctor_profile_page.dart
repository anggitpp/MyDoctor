import 'package:flutter/material.dart';
import 'package:mydoctor/screens/widgets/default_button.dart';
import 'package:mydoctor/screens/widgets/default_header.dart';
import 'package:mydoctor/screens/widgets/doctor_profile_box.dart';
import 'package:mydoctor/shared/theme.dart';

class DoctorProfilePage extends StatelessWidget {
  const DoctorProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          DefaultHeader(text: 'Profile'),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 130,
            height: 130,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: lightGrayColor, width: 1),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/doctor/doctor-1.png'),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: lightRedColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.female,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Nairobi Putri Hayza',
            style: largeText,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Dokter Anak',
            style: smallText.copyWith(fontSize: 16),
          ),
          SizedBox(
            height: 26,
          ),
          DoctorProfileBox(
            title: 'Alumnus',
            text: 'Universitas Indonesia, 2020',
          ),
          DoctorProfileBox(
            title: 'Tempat Praktik',
            text: 'Rumah Sakit Umum, Bandung',
          ),
          DoctorProfileBox(
            title: 'No. STR',
            text: '0000116622081996',
          ),
          SizedBox(
            height: 40,
          ),
          DefaultButton(text: 'Start Consultation', onTap: () {}),
        ],
      )),
    );
  }
}
