import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'homepage.dart';

class OnboardingController extends GetxController {
  final currentPageIndex = 0.obs;
  final pageController = PageController();

  void onPageChanged(int index) {
    currentPageIndex.value = index;
  }

  Future<void> goToNextPage() async {
    if (currentPageIndex.value < 3) {
      pageController.jumpToPage(currentPageIndex.value + 1);
    } else {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('seenOnboarding', true);
      Get.off(Homepage());
    }
  }
}


class Onboarding extends StatelessWidget {
  Onboarding({super.key});

  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade500,
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            children: [
              OnboardingPage(
                title: "Hello",
                onNextPressed: controller.goToNextPage,
              ),
              OnboardingPage(
                title: "Hi",
                onNextPressed: controller.goToNextPage,
              ),
              OnboardingPage(
                title: "Welcome",
                onNextPressed: controller.goToNextPage,
              ),
              OnboardingPage(
                title: "Welcome2",
                onNextPressed: controller.goToNextPage,
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return buildDot(index, controller.currentPageIndex.value);
                }),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget buildDot(int index, int currentPageIndex) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: currentPageIndex == index ? 12 : 8,
      height: currentPageIndex == index ? 12 : 8,
      decoration: BoxDecoration(
        color: currentPageIndex == index ? Colors.blue : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final VoidCallback onNextPressed;

  const OnboardingPage({super.key, required this.title, required this.onNextPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/animated.png'),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onNextPressed,
            child: const Icon(
              size: 20,
              Icons.arrow_forward_ios_outlined,
            ),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: Colors.red,
              side: const BorderSide(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
