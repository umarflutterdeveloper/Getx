import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Secondscreen.dart';
import 'continue.dart';
import 'earning_controller.dart';

class FirstScreen extends StatelessWidget {
  final FirstScreenController controller = Get.put(FirstScreenController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var height = size.height;
    var width = size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: height * 0.02),
                child: Stack(
                  children: [
                    Container(
                      height: 450,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/person.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 320),
                        child: Column(
                          children: [
                            Text(
                              'Instant Bookings,',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Hassle-Free',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                textAlign: TextAlign.center,
                                'You can Book easily video or audio calls with your chosen consultant ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.03),
                  child: TextField(
                    onChanged: (value) => controller.setMobileNumber(value),
                    decoration: InputDecoration(
                      hintText: 'Enter Your Mobile No',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(OTP(inputValue: controller.mobileNumber.value));
                },
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: 80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'or',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      endIndent: 80,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(withcontinue());
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Connect With Google',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Image.asset(
                      'assets/googleicon.png',
                      height: 20,
                      width: 20,
                    ),
                    Icon(
                      Icons.facebook,
                      size: 20,
                    ),
                    Icon(
                      Icons.mail,
                      size: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'By Continuing you are agree to the terms of services  and privacy policy',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
