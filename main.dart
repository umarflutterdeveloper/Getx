import 'package:doctorconsultantapp/Catogory.dart';
import 'package:doctorconsultantapp/consultant.dart';
import 'package:doctorconsultantapp/page3.dart';
import 'package:doctorconsultantapp/page4.dart';
import 'package:doctorconsultantapp/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Countrydata.dart';
import 'earningdetails.dart';
import 'httpdatafetch.dart';
import 'onboarding.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}

class MainPageController extends GetxController {
  var currentIndex = 0.obs;

  final pages = [
    consultant(),
    Catogory(),
    EarningDetails(),
    page3(),
    page4()
  ];
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MainPageController controller = Get.put(MainPageController());

    return Obx(() => Scaffold(
      body: controller.pages[controller.currentIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        onTap: (index) {
          controller.currentIndex.value = index;
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.window), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: 'My Consult'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile'),
        ],
      ),
    ));
  }
}
