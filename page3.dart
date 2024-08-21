import 'package:flutter/material.dart';
class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.orange,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Page3',style: TextStyle(fontSize: 50),)
          ],
        ),
      ),
    );
  }
}
