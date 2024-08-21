import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EarningController extends GetxController {
  var changecolor = 'All'.obs;
  var earnings = '\$145.00'.obs;

  void updateColor(String color) {
    changecolor.value = color;
    if (color == 'All') {
      earnings.value = '\$145.00';
    } else if (color == 'Daily') {
      earnings.value = '\$50.00';
    } else if (color == 'Weekly') {
      earnings.value = '\$100.00';
    } else if (color == 'Custom') {
      earnings.value = '\$75.00';
    }
  }
}
class FlagController extends GetxController {
  var flag = true.obs;  // Observable variable
  void setFlag(bool value) {
    flag.value = value;  // Set the value to the given value
  }
}


class FundsController extends GetxController {
  var fundAmount = ''.obs;  // Reactive variable

  void updateFundAmount(String value) {
    fundAmount.value = value;
  }
}


class PaymentController extends GetxController {
  var paymentMethod = ''.obs;  // Reactive variable

  void setPaymentMethod(String value) {
    paymentMethod.value = value;
  }
}

class CategoryController extends GetxController {
  final categoryList = <Category>[
    Category(image: 'assets/astrologist.png', title: 'Astrologist'),
    Category(image: 'assets/dr.png', title: 'Doctor'),
    Category(image: 'assets/laywer.png', title: 'Lawyer'),
    Category(image: 'assets/youtuber.png', title: 'Youtubers'),
    Category(image: 'assets/teacher.png', title: 'Teachers'),
    Category(image: 'assets/minister.png', title: 'Politician'),
    Category(image: 'assets/astrologist.png', title: 'Astrologist'),
    Category(image: 'assets/dr.png', title: 'Doctor'),
    Category(image: 'assets/laywer.png', title: 'Lawyer'),
    Category(image: 'assets/youtuber.png', title: 'Youtubers'),
    Category(image: 'assets/teacher.png', title: 'Teachers'),
    Category(image: 'assets/minister.png', title: 'Politician'),
  ].obs;
  var selectedCategory = 'All'.obs;
  var changecolor = 'All'.obs;

  // Update the selected category
  void updateCategory(String category) {
    selectedCategory.value = category;
  }

  // Update the color state
  void updateColor(String color) {
    changecolor.value = color;
  }
}

class Category {
  final String image;
  final String title;

  Category({required this.image, required this.title});
}

class FirstScreenController extends GetxController {
  var mobileNumber = ''.obs;

  void setMobileNumber(String value) {
    mobileNumber.value = value;
  }
}