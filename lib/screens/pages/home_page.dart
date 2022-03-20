import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mydoctor/controllers/home_page_controller.dart';
import 'package:mydoctor/models/consultation_category.dart';
import 'package:mydoctor/models/doctor.dart';
import 'package:mydoctor/models/news.dart';
import 'package:mydoctor/screens/widgets/consultation_box.dart';
import 'package:mydoctor/screens/widgets/news_widget.dart';
import 'package:mydoctor/screens/widgets/people_profile.dart';
import 'package:mydoctor/screens/widgets/star_widget.dart';
import 'package:mydoctor/shared/theme.dart';
import 'package:supercharged/supercharged.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomePageController>();

    dummyDoctors.sort((a, b) => -a.star.compareTo(b.star));

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PeopleProfile(
                      image: 'people.png',
                      name: 'Shayna Melinda',
                      role: 'Product Designer',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Mau konsultasi dengan\nsiapa hari ini?',
                      style: largeText,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 130,
                child: ListView.builder(
                  itemCount: dummyConsultationCategories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: index == 0 ? defaultMargin : 0,
                          right: index == dummyConsultationCategories.length - 1
                              ? 16
                              : 10),
                      child: ConsultationBox(
                        category: dummyConsultationCategories[index],
                      ),
                    );
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Top Rated Doctors',
                      style: mediumText,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: ((context, index) {
                        var data = dummyDoctors[index];
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PeopleProfile(
                                  image: 'images/doctor/' + data.imageURL,
                                  name: data.name,
                                  role: data.role,
                                  isOnline: data.isOnline,
                                ),
                                StarWidget(star: data.star),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                          ],
                        );
                      }),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      'Good News',
                      style: mediumText,
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: dummyNews.length,
                  itemBuilder: ((context, index) {
                    var data = dummyNews[index];
                    return NewsWidget(
                      news: data,
                    );
                  })),
            ],
          ),
        ),
      ),
    );
  }
}
