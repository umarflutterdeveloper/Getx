import 'package:doctorconsultantapp/funds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class notifications extends StatelessWidget {
  const notifications({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get. back();
          },
          child: Icon(
            Icons.arrow_back,size: width*0.07,
            color: Colors.black,
          ),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Notifications',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: width*0.05),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: width*0.04, right: width*0.04),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: height*0.04,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(2)),
                      child: Center(
                          child: Text(
                            'All',
                            style: TextStyle(fontSize: width*0.05, color: Colors.white),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: height*0.04,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(2)),
                      child: Center(
                          child: Text(
                            'Payment',
                            style: TextStyle(fontSize: width*0.05, color: Colors.grey),
                          )),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height*0.01,
              ),
              Text(
                'Today',
                style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,),
              ),
              SizedBox(
                height: height*0.01,
              ),
              Container(
                height: height*0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        radius: width*0.05,
                        backgroundColor: Colors.blue.shade300,
                        backgroundImage: AssetImage('assets/component.png'),
                      ),
                    ),
                    SizedBox(
                      width: width*0.02,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dr John sent you a message',
                          style: TextStyle(
                              fontSize: width*0.04, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Hi there......',
                          style: TextStyle(
                              fontSize: width*0.04, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '12.23pm',
                          style: TextStyle(fontSize: width*0.03, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width*0.2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: height*0.06),
                      child: CircleAvatar(
                        radius: width*0.006,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height*0.02,
              ),
              Container(
                height: height*0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        radius: width*0.05,
                        backgroundColor: Colors.blue.shade300,
                        backgroundImage: AssetImage('assets/Component1.png'),
                      ),
                    ),
                    SizedBox(
                      width: width*0.02,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New Application update',
                          style: TextStyle(
                              fontSize: width*0.04, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Now you can decline call easily in the...',
                          style: TextStyle(fontSize: width*0.035,fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                        Text(
                          '12.23pm',
                          style: TextStyle(fontSize: width*0.03, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width*0.08,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: height*0.06),
                      child: CircleAvatar(
                        radius: width*0.006,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height*0.02,
              ),
              Container(
                height: height*0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: width*0.03),
                      child: CircleAvatar(
                        radius: width*0.05,
                        backgroundColor: Colors.blue.shade300,
                        backgroundImage: AssetImage('assets/Component2.png'),
                      ),
                    ),
                    SizedBox(
                      width: width*0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$12 Debited from wallet',
                          style: TextStyle(
                              fontSize: width*0.04, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Call consultant with dr john',
                          style: TextStyle(
                              fontSize: width*0.035,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '12 aug 2023 | 12.23pm',
                          style: TextStyle(fontSize: width*0.03, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height*0.02,
              ),
              Container(
                height: height*0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: width*0.03),
                      child: CircleAvatar(
                        radius: width*0.05,
                        backgroundColor: Colors.blue.shade300,
                        backgroundImage: AssetImage('assets/Component3.png'),
                      ),
                    ),
                    SizedBox(
                      width: width*0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$12 Debited from wallet',
                          style: TextStyle(
                              fontSize: width*0.04, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Call consultant with dr john',
                          style: TextStyle(
                              fontSize: width*0.035,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '12 aug 2023 | 12.23pm',
                          style: TextStyle(fontSize: width*0.03, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height*0.01,
              ),
              Text(
                'This Week',
                style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,),
              ),
              SizedBox(
                height: height*0.01,
              ),
              Container(
                height: height*0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        radius: width*0.05,
                        backgroundColor: Colors.blue.shade300,
                        backgroundImage: AssetImage('assets/component.png'),
                      ),
                    ),
                    SizedBox(
                      width: width*0.02,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dr John sent you a message',
                          style: TextStyle(
                              fontSize: width*0.04, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Hi there......',
                          style: TextStyle(
                              fontSize: width*0.04, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '12.23pm',
                          style: TextStyle(fontSize: width*0.03, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width*0.2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: height*0.06),
                      child: CircleAvatar(
                        radius: width*0.006,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height*0.02,
              ),
              Container(
                height: height*0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        radius: width*0.05,
                        backgroundColor: Colors.blue.shade300,
                        backgroundImage: AssetImage('assets/Component1.png'),
                      ),
                    ),
                    SizedBox(
                      width: width*0.02,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New Application update',
                          style: TextStyle(
                              fontSize: width*0.04, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Now you can decline call easily in the...',
                          style: TextStyle(fontSize: width*0.035,fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                        Text(
                          '12.23pm',
                          style: TextStyle(fontSize: width*0.03, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width*0.08,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: height*0.06),
                      child: CircleAvatar(
                        radius: width*0.006,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height*0.02,
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
