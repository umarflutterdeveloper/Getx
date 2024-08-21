import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'homepage.dart';
import 'onboarding.dart';

class Splashpractice extends StatelessWidget {
  const Splashpractice({super.key});

  Future<void> _navigateBasedOnOnboarding(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? seenOnboarding = prefs.getBool('seenOnboarding') ?? false;

    // Navigate to the appropriate screen after the timer ends
    Timer(Duration(seconds: 3), () {
      if (seenOnboarding) {
        Get.off(Homepage());
      } else {
        Get.off(Onboarding());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Start the timer and navigate based on onboarding status when the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) => _navigateBasedOnOnboarding(context));

    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: width * 0.2,
              backgroundImage: AssetImage('assets/netflix.png'),
            ),
          ),
          Text(
            'Movies Studios',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: width * 0.05,
            ),
          ),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
