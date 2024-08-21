import 'package:doctorconsultantapp/email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class withcontinue extends StatelessWidget {
  withcontinue({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            size: width * 0.07,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.15),
                child: CircleAvatar(
                  radius: width * 0.15,
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                height: width * 0.13,
                width: width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/googleicon.png',
                        height: width * 0.05,
                        width: width * 0.05,
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Text(
                        'Continue With Google',
                        style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: width * 0.13,
                width: width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.03),
                  child: Row(
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.blueAccent,
                        size: width * 0.07,
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Text(
                        'Connect With Facebook',
                        style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(email());
                },
                child: Container(
                  height: width * 0.13,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: Row(
                      children: [
                        Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                          size: width * 0.06,
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Text(
                          'Sign In With Email',
                          style: TextStyle(
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "By continuing you agree to the ",
                      style: TextStyle(
                          color: Colors.grey, fontSize: width * 0.03),
                    ),
                    TextSpan(
                      text: "Terms of services ",
                      style: TextStyle(
                          color: Colors.white, fontSize: width * 0.03),
                    ),
                    TextSpan(
                      text: "and ",
                      style: TextStyle(
                          color: Colors.grey, fontSize: width * 0.03),
                    ),
                    TextSpan(
                      text: "Privacy policy",
                      style: TextStyle(
                          color: Colors.grey, fontSize: width * 0.03),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


