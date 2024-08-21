import 'package:flutter/material.dart';
class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.green,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Page4',style: TextStyle(fontSize: 50),)
          ],
        ),
      ),
    );
  }
}
