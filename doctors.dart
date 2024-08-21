import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorsController extends GetxController {
  var flag = true.obs;
  var reject = true.obs;
}

class Doctors extends StatelessWidget {
  Doctors({super.key});

  @override
  Widget build(BuildContext context) {
    final DoctorsController updateDoctorsController = Get.put(DoctorsController());
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    var size = MediaQuery.sizeOf(context);
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
            Icons.arrow_back,
            size: width * 0.07,
            color: Colors.black,
          ),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Doctors',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.06),
            ),
            SizedBox(
              width: width * 0.36,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200, borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.reply_outlined,
                size: width * 0.05,
              ),
            ),
            SizedBox(
              width: width * 0.02,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200, borderRadius: BorderRadius.circular(50)),
              child: GestureDetector(
                onTap: () {
                  updateDoctorsController.flag.value = !updateDoctorsController.flag.value;
                },
                child: Obx(
                      () => Icon(
                    Icons.favorite_border,
                    color: updateDoctorsController.flag.value ? Colors.red : Colors.green,
                    size: width * 0.05,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: width * 0.02,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200, borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.more_vert,
                size: width * 0.05,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.08,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.01,
                  ),
                  CircleAvatar(
                      radius: width * 0.07,
                      backgroundImage: AssetImage(arguments['image'])),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        arguments['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: width * 0.05),
                      ),
                      Text(
                        arguments['specialization'],
                        style: TextStyle(fontSize: width * 0.05),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.04),
                    child: Icon(
                      Icons.verified,
                      color: Colors.blue,
                      size: width * 0.035,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Warning'),
                            content: Container(
                              height: 200,
                              width: 200,
                              color: Colors.grey,
                            ),
                            actions: [
                              TextButton(onPressed: () {}, child: Text('Follow')),
                              TextButton(onPressed: () {}, child: Text('Not Follow')),
                            ],
                          );
                        });
                  },
                  child: Container(
                    height: height * 0.06,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.pink.shade50, borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                          'Follow',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(
                              builder: (BuildContext context, StateSetter setModalState) {
                                return Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Container(
                                    height: height * 0.4,
                                    width: double.infinity,
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage:
                                          AssetImage('assets/bottomsheet.png'),
                                          radius: width * 0.1,
                                        ),
                                        Text(
                                          'Dr John Doe',
                                          style: TextStyle(fontSize: width * 0.04),
                                        ),
                                        Text(
                                          'Calling....',
                                          style:
                                          TextStyle(fontSize: width * 0.04, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            CircleAvatar(
                                              child: Icon(Icons.message),
                                              radius: width * 0.045,
                                              backgroundColor: Colors.grey.shade300,
                                            ),
                                            SizedBox(
                                              width: width * 0.04,
                                            ),
                                            CircleAvatar(
                                              child: Icon(Icons.mic_off),
                                              radius: width * 0.045,
                                              backgroundColor: Colors.grey.shade300,
                                            ),
                                            SizedBox(
                                              width: width * 0.04,
                                            ),
                                            CircleAvatar(
                                              child: Icon(Icons.volume_up),
                                              radius: width * 0.045,
                                              backgroundColor: Colors.grey.shade300,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                        Container(
                                          height: height * 0.04,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius: BorderRadius.circular(3)),
                                          child: Center(
                                              child: Text(
                                                'Audio call estimation 2 min',
                                                style: TextStyle(color: Colors.black),
                                              )),
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Obx(
                                              () => updateDoctorsController.reject.value
                                              ? Column(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  setModalState(() {
                                                    updateDoctorsController.reject.value =
                                                    false;
                                                  });
                                                },
                                                child: Container(
                                                  height: height * 0.06,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                      color: Colors.redAccent,
                                                      borderRadius: BorderRadius.circular(3)),
                                                  child: Center(
                                                      child: Text(
                                                        'Reject',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold),
                                                      )),
                                                ),
                                              ),
                                            ],
                                          )
                                              : Row(
                                            children: [
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setModalState(() {
                                                      updateDoctorsController
                                                          .reject.value =
                                                      !updateDoctorsController
                                                          .reject.value;
                                                    });
                                                  },
                                                  child: Container(
                                                      height: height * 0.06,
                                                      decoration: BoxDecoration(
                                                          color: Colors.grey.shade200,
                                                          borderRadius: BorderRadius.circular(
                                                              5)),
                                                      child: Center(
                                                          child: Text(
                                                            'Cancel',
                                                            style: TextStyle(
                                                                color: Colors.grey,
                                                                fontWeight: FontWeight.bold),
                                                          ))),
                                                ),
                                              ),
                                              SizedBox(
                                                width: width * 0.02,
                                              ),
                                              Expanded(
                                                child: Container(
                                                  height: height * 0.06,
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange.shade800,
                                                      borderRadius: BorderRadius.circular(5)),
                                                  child: Center(
                                                      child: Text(
                                                        'Call again',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold),
                                                      )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          });
                    },
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.6,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade500, borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                            'Take a consultant',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04),
                          )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              'About Consultant',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.04),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              'Dr John Smith is a consultant doctor with 20 years of experience in the medical industry. '
                  'He focuses on providing preventative health care and health education to help individuals and families to stay healthy. '
                  'He has a strong background in diagnosis and treatment of various medical '
                  'conditions and is dedicated to helping people make the best health care decisions for their individual needs.',
              style: TextStyle(color: Colors.grey, fontSize: width * 0.04),
            ),
          ],
        ),
      ),
    );
  }
}
