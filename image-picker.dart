import 'package:flutter/material.dart';

class Drarpractice extends StatelessWidget {
  const Drarpractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Drawer Practice'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        width: 200,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 80,
              child: DrawerHeader(
                child: Text(
                  "Header",
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(color: Colors.black),
                padding: EdgeInsets.all(20),
              ),
            ),
            SizedBox(height: 20),
            Text("data"),
          ],
        ),
      ),
    );
  }
}
