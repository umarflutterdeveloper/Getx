import 'package:flutter/material.dart';

class OTP extends StatelessWidget {
  final String inputValue;
  List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());

  OTP({required this.inputValue});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:  EdgeInsets.all(width*0.04),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Your OTP send to your\nmobile number: $inputValue',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: width*0.05),
            ),
            SizedBox(
              height: height*0.01,
            ),
            Padding(
              padding: EdgeInsets.all(width*0.01),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(6, (index) {
                    return Container(
                      width: width*0.11,
                      decoration: BoxDecoration(color: Colors.grey.shade200,),
                      child: TextField(
                        controller: _controllers[index],
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange),
                          ),
                        ),
                        onChanged: (value) {
                          if (value.length == 1 && index != 5) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                      ),
                    );
                  }),
                ),
              ),
            ),

            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Resent code in 00:55',style: TextStyle(fontSize: width*0.035),),
              ],
            ),
          SizedBox(height: height*0.4,),
            Container(
              height: height*0.05,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue.shade600, borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  )),
            ),
          ],

        ),
      ),
    );
  }
}
