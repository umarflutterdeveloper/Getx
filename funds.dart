import 'package:doctorconsultantapp/earning_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class funds extends StatelessWidget {
   funds({super.key});

  @override
  String? pamentmethod='';
  bool fund = true;
  final FundsController fundsgetController = Get.put(FundsController());
   final TextEditingController fundsTextController = TextEditingController();
   final PaymentController paymentController = Get.put(PaymentController());
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _fundsformKey = GlobalKey<FormState>();
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
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,size: width*0.07,
            color: Colors.black,
          ),
        ),
        title: Row(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Add Funds',
              style: TextStyle(fontSize: width*0.06,fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: width*0.04, right: width*0.04),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height*0.02,
              ),
              Text(
                  'Choose Amount',
                  style: TextStyle(
                      color: Colors.black),
                ),
              SizedBox(
                height: height*0.02,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.only(left: width*0.03),
                    child: Form(
                        key: _fundsformKey,
                        child: TextFormField(
                          controller: fundsTextController,
                          decoration: InputDecoration(
                              hintText: '\$20',
                              border: InputBorder.none),
                          validator: (value) {
                            print("Value $value");
                            if (value == null || value.isEmpty) {
                              return 'choose amount';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            // Update reactive variable when text changes
                            fundsgetController.updateFundAmount(value);
                          },
                        )),
                  )),
              SizedBox(
                height: height*0.02,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print("Function calling");
                        // Update reactive variable and text field when tapped
                        fundsgetController.updateFundAmount('\$10');
                        fundsTextController.text = '\$10';
                      },
                      child: Container(
                        height: height*0.04,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent.shade200.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(1)),
                        child: Center(
                            child: Text(
                              '\$10',
                              style: TextStyle(color: Colors.blue, fontSize: width*0.05),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Update reactive variable and text field when tapped
                        fundsgetController.updateFundAmount('\$25');
                        fundsTextController.text = fundsgetController.fundAmount.value;
                      },
                      child: Container(
                        height: height*0.04,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent.shade200.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(1)),
                        child: Center(
                            child: Text(
                              '\$25',
                              style: TextStyle(color: Colors.blue, fontSize: width*0.05),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {

                        // Update reactive variable and text field when tapped
                        fundsgetController.updateFundAmount('\$50');
                        fundsTextController.text = fundsgetController.fundAmount.value;

                      },
                      child: Container(
                        height: height*0.04,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent.shade200.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(1)),
                        child: Center(
                            child: Text(
                              '\$50',
                              style: TextStyle(color: Colors.blue, fontSize: width*0.05),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {

                        // Update reactive variable and text field when tapped
                        fundsgetController.updateFundAmount('\$100');
                        fundsTextController.text = fundsgetController.fundAmount.value;

                      },
                      child: Container(
                        height: height*0.04,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent.shade200.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(1)),
                        child: Center(
                            child: Text(
                              '\$100',
                              style: TextStyle(color: Colors.blue, fontSize: width*0.05),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {

                        // Update reactive variable and text field when tapped
                        fundsgetController.updateFundAmount('\$200');
                        fundsTextController.text = fundsgetController.fundAmount.value;

                      },
                      child: Container(
                        height: height*0.04,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent.shade200.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(1)),
                        child: Center(
                            child: Text(
                              '\$200',
                              style: TextStyle(color: Colors.blue, fontSize: width*0.05),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {

                        // Update reactive variable and text field when tapped
                        fundsgetController.updateFundAmount('\$500');
                        fundsTextController.text = fundsgetController.fundAmount.value;

                      },
                      child: Container(
                        height: height*0.04,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent.shade200.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(1)),
                        child: Center(
                            child: Text(
                              '\$500',
                              style: TextStyle(color: Colors.blue, fontSize: width*0.05),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height*0.04,
              ),
              Text(
                'Select Payment Method',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: width*0.05,fontWeight: FontWeight.bold,),
              ),
              SizedBox(
                height: height*0.02,
              ),
              Container(
                height: height*0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.only(left: width*0.04),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Obx(
                      ()=> Radio<String>(value: 'paypal', groupValue: paymentController.paymentMethod.value, onChanged: (String? value){
                          paymentController.setPaymentMethod(value!);
                        }),
                      ),
                      SizedBox(
                        width: height*0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Paypal',
                            style: TextStyle(
                                fontSize: width*0.05,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width*0.4,
                      ),
                      Image.asset(
                        'assets/paypal.png',
                        height: height*0.1,
                        width: width*0.1,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height*0.01,
              ),
              Container(
                height: height*0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.only(left: width*0.04),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Obx(
                      ()=> Radio<String>(value: 'google', groupValue: paymentController.paymentMethod.value, onChanged: (String? value){
                        paymentController.setPaymentMethod(value!);
                        }),
                      ),
                      SizedBox(
                        width: height*0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Google Pay',
                            style: TextStyle(
                                fontSize: width*0.05,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width*0.2,
                      ),
                      Image.asset(
                        'assets/googlepay.png',
                        height: height*0.2,
                        width: width*0.2,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height*0.01,
              ),
              Container(
                height: height*0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.only(left: width*0.04),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Obx(
                      ()=> Radio<String>(value: 'card', groupValue: paymentController.paymentMethod.value, onChanged: (String? value){
                        paymentController.setPaymentMethod(value!);
                        }),
                      ),
                      SizedBox(
                        width: height*0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Credit or Debit Card',
                            style: TextStyle(
                                fontSize: width*0.05,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width*0.01,
                      ),
                      Image.asset(
                        'assets/debitcard.png',
                        height: height*0.2,
                        width: width*0.2,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height*0.3,),
              GestureDetector(
                onTap: (){
                  print('Selected Payment Method: $pamentmethod');
                },
                child: Container(
                  height: height*0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade600,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'Continue to add \$20',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: width*0.05,fontWeight: FontWeight.bold,),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
