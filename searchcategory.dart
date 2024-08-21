import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doctorconsultantapp/models/consultant-model.dart';
import 'package:doctorconsultantapp/models/lists-category-model.dart';

import 'earning_controller.dart';

class Searchcategory extends StatelessWidget {
  final CategoryController categoryController = Get.put(CategoryController());

  final List<categorymodel> categorylist = [
    categorymodel(title: 'All'),
    categorymodel(title: 'Astrologist'),
    categorymodel(title: 'Doctor'),
    categorymodel(title: 'Lawyer'),
    categorymodel(title: 'Youtubers'),
    categorymodel(title: 'Teachers'),
    categorymodel(title: 'Politician'),
  ];

  final List<Astrologistmdel> Astrologistlist = [
    Astrologistmdel(title: 'Mehar', specialization: 'Space'),
    Astrologistmdel(title: 'Malik', specialization: 'Air'),
    Astrologistmdel(title: 'Gujjar', specialization: 'Earth'),
    Astrologistmdel(title: 'Rajpot', specialization: 'Water'),
    Astrologistmdel(title: 'Sheikh', specialization: 'Fire'),
    Astrologistmdel(title: 'Jutt', specialization: 'Moon'),
    Astrologistmdel(title: 'Mehar', specialization: 'Space'),
    Astrologistmdel(title: 'Malik', specialization: 'Air'),
    Astrologistmdel(title: 'Gujjar', specialization: 'Earth'),
    Astrologistmdel(title: 'Rajpot', specialization: 'Water'),
    Astrologistmdel(title: 'Sheikh', specialization: 'Fire'),
    Astrologistmdel(title: 'Jutt', specialization: 'Moon'),
  ];

  final List<Doctormodel> Doctorlist = [
    Doctormodel(title: 'Dr. Umar', specialization: 'Dermatologist'),
    Doctormodel(title: 'Dr. Moeen', specialization: 'Orthopologist'),
    Doctormodel(title: 'Dr. Haider', specialization: 'Gaenacologist'),
    Doctormodel(title: 'Dr. Hammad', specialization: 'Sergen'),
    Doctormodel(title: 'Dr. Sagheer', specialization: 'Mlt'),
    Doctormodel(title: 'Dr. Taha', specialization: 'OT'),
    Doctormodel(title: 'Dr. Umar', specialization: 'Dermatologist'),
    Doctormodel(title: 'Dr. Moeen', specialization: 'Orthopologist'),
    Doctormodel(title: 'Dr. Haider', specialization: 'Gaenacologist'),
    Doctormodel(title: 'Dr. Hammad', specialization: 'Sergen'),
    Doctormodel(title: 'Dr. Sagheer', specialization: 'Mlt'),
    Doctormodel(title: 'Dr. Taha', specialization: 'OT'),

  ];

  final List<Lawyermodel> Lawyerlist = [
    Lawyermodel(title: 'Ali', specialization: 'Crime'),
    Lawyermodel(title: 'Hassan', specialization: 'Politics'),
    Lawyermodel(title: 'Arif', specialization: 'Taxes'),
    Lawyermodel(title: 'Mushtaq', specialization: 'Reliese'),
    Lawyermodel(title: 'Ashiq', specialization: 'Marriage'),
    Lawyermodel(title: 'Qasim', specialization: 'Devorce'),
    Lawyermodel(title: 'Ali', specialization: 'Crime'),
    Lawyermodel(title: 'Hassan', specialization: 'Politics'),
    Lawyermodel(title: 'Arif', specialization: 'Taxes'),
    Lawyermodel(title: 'Mushtaq', specialization: 'Reliese'),
    Lawyermodel(title: 'Ashiq', specialization: 'Marriage'),
    Lawyermodel(title: 'Qasim', specialization: 'Devorce'),
  ];

  final List<Youtubersrmodel> Youtuberslist = [
    Youtubersrmodel(title: 'Hamza', specialization: 'Viloger'),
    Youtubersrmodel(title: 'Ahtesham', specialization: 'Love'),
    Youtubersrmodel(title: 'Aftab', specialization: 'Poetry'),
    Youtubersrmodel(title: 'Bilal', specialization: 'Motivational'),
    Youtubersrmodel(title: 'Kashif', specialization: 'Influencer'),
    Youtubersrmodel(title: 'Rashid', specialization: 'Funny'),
    Youtubersrmodel(title: 'Hamza', specialization: 'Viloger'),
    Youtubersrmodel(title: 'Ahtesham', specialization: 'Love'),
    Youtubersrmodel(title: 'Aftab', specialization: 'Poetry'),
    Youtubersrmodel(title: 'Bilal', specialization: 'Motivational'),
    Youtubersrmodel(title: 'Kashif', specialization: 'Influencer'),
    Youtubersrmodel(title: 'Rashid', specialization: 'Funny'),
  ];

  final List<Teachersmodel> Teacherslist = [
    Teachersmodel(title: 'Khalid', specialization: 'Bio'),
    Teachersmodel(title: 'Muneer', specialization: 'Arabic'),
    Teachersmodel(title: 'Asim', specialization: 'Phy'),
    Teachersmodel(title: 'Cheema', specialization: 'Che'),
    Teachersmodel(title: 'Riaz', specialization: 'English'),
    Teachersmodel(title: 'Khushi', specialization: 'Urdu'),
    Teachersmodel(title: 'Khalid', specialization: 'Bio'),
    Teachersmodel(title: 'Muneer', specialization: 'Arabic'),
    Teachersmodel(title: 'Asim', specialization: 'Phy'),
    Teachersmodel(title: 'Cheema', specialization: 'Che'),
    Teachersmodel(title: 'Riaz', specialization: 'English'),
    Teachersmodel(title: 'Khushi', specialization: 'Urdu'),
  ];

  final List<Politicianmodel> Politicianlist = [
    Politicianmodel(title: 'Saad', specialization: 'Edu'),
    Politicianmodel(title: 'Hussain', specialization: 'Health'),
    Politicianmodel(title: 'Rizvi', specialization: 'Medicine'),
    Politicianmodel(title: 'Khadim', specialization: 'Drugs'),
    Politicianmodel(title: 'Jalali', specialization: 'Tourism'),
    Politicianmodel(title: 'Ashraf', specialization: 'Jihad'),
    Politicianmodel(title: 'Saad', specialization: 'Edu'),
    Politicianmodel(title: 'Hussain', specialization: 'Health'),
    Politicianmodel(title: 'Rizvi', specialization: 'Medicine'),
    Politicianmodel(title: 'Khadim', specialization: 'Drugs'),
    Politicianmodel(title: 'Jalali', specialization: 'Tourism'),
    Politicianmodel(title: 'Ashraf', specialization: 'Jihad'),
  ];

  List<dynamic> get Categorylist {
    if (categoryController.selectedCategory.value == 'Astrologist') {
      return Astrologistlist;
    } else if (categoryController.selectedCategory.value == 'Doctor') {
      return Doctorlist;
    } else if (categoryController.selectedCategory.value == 'Lawyer') {
      return Lawyerlist;
    } else if (categoryController.selectedCategory.value == 'Youtubers') {
      return Youtuberslist;
    } else if (categoryController.selectedCategory.value == 'Teachers') {
      return Teacherslist;
    } else if (categoryController.selectedCategory.value == 'Politician') {
      return Politicianlist;
    } else {
      return [
        ...Astrologistlist,
        ...Doctorlist,
        ...Lawyerlist,
        ...Youtuberslist,
        ...Teacherslist,
        ...Politicianlist
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments as Map<String, dynamic>?;

    if (arguments != null && arguments['name'] != null) {
      categoryController.updateCategory(arguments['name']);
    } else {
      print('Data Not Arrived');
    }
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            size: width * 0.07,
            color: Colors.black,
          ),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() => Text(
              categoryController.selectedCategory.value,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: width * 0.05),
            )),
            SizedBox(width: width * 0.03),
            Container(
              height: height * 0.035,
              width: width * 0.25,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.wallet,
                    color: Colors.orange,
                    size: width * 0.05,
                  ),
                  Text(
                    '00.00',
                    style: TextStyle(fontSize: width * 0.04),
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    size: width * 0.05,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.01),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(5)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search for consultant',
                    prefixIcon: Icon(Icons.search_rounded),
                    suffixIcon: Image.asset('assets/Faders.png'),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: height * 0.01),
            Container(
              height: height * 0.04,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categorylist.length,
                itemBuilder: (context, index) {
                  final categorymodel = categorylist[index];
                  return Padding(
                    padding: EdgeInsets.only(left: width * 0.02),
                    child: GestureDetector(
                      onTap: () {
                        categoryController.updateColor(categorymodel.title);
                        categoryController.updateCategory(categorymodel.title);
                      },
                      child: Obx(() => Container(
                        decoration: BoxDecoration(
                            color: categorymodel.title == categoryController.changecolor.value
                                ? Colors.black
                                : Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(2)),
                        child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.01, right: width * 0.01),
                              child: Text(
                                categorymodel.title,
                                style: TextStyle(
                                  color: categorymodel.title == categoryController.changecolor.value
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            )),
                      )),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: height * 0.01),
            Expanded(
              child: Obx(() => ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: Categorylist.length,
                  itemBuilder: (context, index) {
                    final data = Categorylist[index];
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: height * 0.2,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: width * 0.25,
                                        width: width * 0.25,
                                        child: Image.asset(
                                          'assets/searchcategory.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(width: width * 0.01),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            data.title,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: width * 0.05),
                                          ),
                                          Text(
                                            data.specialization,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: width * 0.04),
                                          ),
                                          Text(
                                            '12+ years of experience',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: width * 0.04),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              Text(
                                                '4.5(13 reviews)',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: width * 0.04),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.verified,
                                    color: Colors.blue,
                                    size: width * 0.04,
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.02),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: height * 0.04,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.01,
                                                right: width * 0.01),
                                            child: Text(
                                              '\$4.00 chat',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                          )),
                                    ),
                                  ),
                                  SizedBox(width: width * 0.02),
                                  Expanded(
                                    child: Container(
                                      height: height * 0.04,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.01,
                                                right: width * 0.01),
                                            child: Text(
                                              '\$14.00 Audio',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                          )),
                                    ),
                                  ),
                                  SizedBox(width: width * 0.02),
                                  Expanded(
                                    child: Container(
                                      height: height * 0.04,
                                      decoration: BoxDecoration(
                                          color: Colors.orange.shade700,
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.01,
                                                right: width * 0.01),
                                            child: Text(
                                              '\$24.00 video',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                          )),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
