import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomsheetController extends GetxController {
  var changeColor = ''.obs;
  var value = 0.obs;

  void colors(String color) {
    changeColor.value = color;
    if (changeColor.value == '10') {
      value.value = 10;
    } else if (changeColor.value == '20') {
      value.value = 20;
    } else if (changeColor.value == '30') {
      value.value = 30;
    } else {
      value.value = 0;
    }
  }
}


class Bottomsheet extends StatelessWidget {
  Bottomsheet({super.key});

  final BottomsheetController controller = Get.put(BottomsheetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFCCB88B),
      appBar: AppBar(
        title: Text('Bottom sheet'),
        leading: Icon(Icons.filter),
      ),
      body: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  if (controller.changeColor.value != '10') {
                    controller.colors('10');
                  } else {
                    controller.colors('0');
                  }
                },
                child: Obx(() => Container(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text(
                      '10',
                      style: TextStyle(
                        color: controller.changeColor.value == '10' ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  color: controller.changeColor.value == '10' ? Colors.red : Colors.grey,
                )),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  if (controller.changeColor.value != '20') {
                    controller.colors('20');
                  } else {
                    controller.colors('0');
                  }
                },
                child: Obx(() => Container(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text(
                      '20',
                      style: TextStyle(
                        color: controller.changeColor.value == '20' ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  color: controller.changeColor.value == '20' ? Colors.red : Colors.grey,
                )),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  if (controller.changeColor.value != '30') {
                    controller.colors('30');
                  } else {
                    controller.colors('0');
                  }
                },
                child: Obx(() => Container(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text(
                      '30',
                      style: TextStyle(
                        color: controller.changeColor.value == '30' ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  color: controller.changeColor.value == '30' ? Colors.red : Colors.grey,
                )),
              ),
            ],
          ),
          SizedBox(height: 40),
          Obx(() => Text('${controller.value.value}')),
        ],
      ),
    );
  }
}
