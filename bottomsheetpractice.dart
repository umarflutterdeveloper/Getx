import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetController extends GetxController {
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
          child: Column(
            children: [
              Text('My Group Members'),
              Text('Umer'),
              Text('Moeen'),
              Text('Ali'),
            ],
          ),
        );
      },
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert!'),
          content: Container(
            height: 300,
            child: Column(
              children: [
                Text('Taha'),
                Text('Moeen'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () => Get.back(),
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }
}

class Bottom_Sheet extends StatelessWidget {
  Bottom_Sheet({Key? key}) : super(key: key);

  final BottomSheetController _controller = Get.put(BottomSheetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _controller.showBottomSheet(context),
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(color: Colors.black),
                child: Center(
                  child: Text(
                    'Show Bottom Sheets',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            GestureDetector(
              onTap: () => _controller.showAlertDialog(context),
              child: Container(
                height: 50,
                width: 200,
                color: Colors.black,
                child: Center(
                  child: Text(
                    'Show Alert Dialog',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
