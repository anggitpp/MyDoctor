import 'package:flutter/material.dart';
import 'package:mydoctor/models/hospital.dart';
import 'package:mydoctor/screens/widgets/hospital_list_widget.dart';
import 'package:mydoctor/shared/theme.dart';

class HospitalPage extends StatelessWidget {
  const HospitalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: phoneWidth(context),
            height: phoneHeight(context) / 3,
            padding: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/hospital/hospital-3.png'),
              ),
            ),
            child: Column(
              children: [
                Text(
                  'Nearby Hospitals',
                  style: largeText.copyWith(color: Colors.white),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '3 Available',
                  style: mediumText.copyWith(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            width: phoneWidth(context),
            margin: EdgeInsets.only(top: 210),
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: dummyHospitals.length,
              itemBuilder: (context, index) {
                return HospitalListWidget(hospital: dummyHospitals[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
