import 'package:get/get.dart';
import 'consultant.dart';
import 'Catogory.dart';
import 'earningdetails.dart';
import 'page3.dart';
import 'page4.dart';

class Routes {
  static final routes = [
    GetPage(name: '/consultant', page: () => consultant()),
    GetPage(name: '/category', page: () => Catogory()),
    GetPage(name: '/earning_details', page: () => EarningDetails()),
    GetPage(name: '/page3', page: () => page3()),
    GetPage(name: '/page4', page: () => page4()),
  ];
}
