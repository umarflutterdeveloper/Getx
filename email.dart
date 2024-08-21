import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'main.dart';
class email extends StatelessWidget {
   email({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController Enailcontroller = TextEditingController();
    TextEditingController passwordcontroler = TextEditingController();
    final GlobalKey<FormState> _EmailformKey = GlobalKey<FormState>();
    final GlobalKey<FormState> _passwordKey = GlobalKey<FormState>();
    var size = MediaQuery.sizeOf(context);
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_new,size: width*0.07,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  'Sign In',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: width*0.05),
                ),
              ),
              SizedBox(
                height: width*0.03,
              ),
              Text('Email'),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.only(left: width*0.03),
                    child: Form(
                        key: _EmailformKey,
                        child: TextFormField(
                          controller: Enailcontroller,
                          decoration: InputDecoration(
                              hintText: 'Example@email.com',
                              border: InputBorder.none),
                          validator: (value) {
                            print("Value $value");
                            if (value == null || value.isEmpty) {
                              return 'Please enter Email';
                            }
                            return null;
                          },
                        )),
                  )),
              SizedBox(
                height: height*0.02,
              ),
              Text('Password'),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.only(left: width*0.03),
                  child: Form(
                    key: _passwordKey,
                    child: TextFormField(
                      controller: passwordcontroler,
                      validator: (value) {
                        print("Value $value");
                        if (value == null || value.isEmpty) {
                          return 'Please enter Password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: 'Min 8 Letters', border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.red,fontSize: width*0.03),
                  ),
                ],
              ),
              SizedBox(
                height: height*0.05,
              ),
              GestureDetector(
                onTap: () {
                  if (_EmailformKey.currentState!.validate() &&
                      _passwordKey.currentState!.validate()) {
                    Enailcontroller.clear();
                    passwordcontroler.clear();
                    print("form key validate");
                    Get.to(() => MainPage());
                  } else {
                    Get.snackbar(
                      'Error',
                      'Please Fill All Fields',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
                child: Container(
                  height: height*0.07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent.shade700,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: width*0.04,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: width*0.05,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: width*0.27,
                    ),
                  ),
                  Text(
                    'or',
                    style: TextStyle(fontSize: width*0.04),
                  ),
                  Expanded(
                    child: Divider(
                      endIndent: width*0.27,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: width*0.05,
              ),
              Container(
                height: height*0.07,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                        height: height*0.07,
                        width: width*0.07,'assets/googleicon.png'),
                    SizedBox(width: width*0.03,),
                    Text(
                      'Continue With Google',
                      style: TextStyle(fontSize: width*0.04, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: height*0.07,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook,color: Colors.blue,size: width*0.08,),
                    SizedBox(width: width*0.03,),
                    Text(
                      'Continue With facebook',
                      style: TextStyle(fontSize: width*0.04, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height*0.05,
              ),
              Padding(
                padding: EdgeInsets.only(left: width*0.04,right: width*0.04),
                child: Text(textAlign: TextAlign.center,
                  'By Continuing you are agree to terms of services and privacy policy',
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,fontSize: width*0.04),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
