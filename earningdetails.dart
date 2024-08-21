import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'earning_controller.dart';

class EarningDetails extends StatelessWidget {
  const EarningDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final EarningController controller = Get.put(EarningController());

    var size = MediaQuery.sizeOf(context);
    var height = size.height;
    var width = size.width;
    print('Updatecheck');

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back(); // Use GetX to go back
          },
          child: Icon(
            Icons.arrow_back,
            size: width * 0.07,
            color: Colors.black,
          ),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Earning Details',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: width * 0.05),
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Total available for withdrawal',
                style: TextStyle(fontSize: width * 0.04, color: Colors.black),
              ),
              Text(
                '\$45.56', // This value can be updated similarly if required
                style: TextStyle(
                    fontSize: width * 0.1,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.02),
              Container(
                height: height * 0.04,
                width: width * 0.3,
                decoration: BoxDecoration(
                    color: Colors.blue.shade700,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    'Withdraw',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),
              Row(
                children: [
                  Text(
                    'Analytics',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.04),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: height * 0.04,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5)),
                      child: _buildColorOptions(
                        ['All', 'Daily', 'Weekly', 'Custom'], // List of options
                        controller,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              Obx(() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total earnings',
                      style: TextStyle(
                          fontSize: width * 0.04, color: Colors.black),
                    ),
                    Text(
                      '${controller.earnings.value}',
                      style: TextStyle(
                          fontSize: width * 0.04,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              }),
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Available for withdrawal',
                    style: TextStyle(
                        fontSize: width * 0.04, color: Colors.black),
                  ),
                  Text(
                    '\$45.56',
                    style: TextStyle(
                        fontSize: width * 0.04,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Consult',
                    style: TextStyle(
                        fontSize: width * 0.04, color: Colors.black),
                  ),
                  Text(
                    '56',
                    style: TextStyle(
                        fontSize: width * 0.04,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: height * 0.04),
              Row(
                children: [
                  Text(
                    'Revenues',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.04),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              Row(
                children: [
                  _buildRevenueOption('Payment cleared', '\$145.00', controller, width, height),
                  SizedBox(width: width * 0.01),
                  _buildRevenueOption('Earnings', '\$25.23', controller, width, height),
                ],
              ),
              SizedBox(height: height * 0.02),
              Row(
                children: [
                  _buildRevenueOption('Expenses', '\$145.00', controller, width, height),
                  SizedBox(width: width * 0.01),
                  _buildRevenueOption('Payment cleared', '\$145.00', controller, width, height),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorOptions(List<String> options, EarningController controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: options.map((option) {
        return _buildColorOption(option, controller);
      }).toList(),
    );
  }

  Widget _buildColorOption(String label, EarningController controller) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          controller.updateColor(label);
        },
        child: Obx(() {
          return Container(
            height: Get.height * 0.04,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: controller.changecolor.value == label
                  ? Colors.black
                  : Colors.grey.shade200,
            ),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  color: controller.changecolor.value == label
                      ? Colors.white
                      : Colors.grey,
                  fontSize: Get.width * 0.04,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildRevenueOption(String label, String amount, EarningController controller, double width, double height) {
    return Expanded(
      child: Container(
        height: height * 0.1,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.04),
                  ),
                  Text(
                    amount,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.08,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_outlined,
              size: width * 0.06,
            )
          ],
        ),
      ),
    );
  }
}
