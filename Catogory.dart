import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'earning_controller.dart';
import 'models/consultant-model.dart'; // Adjust the import based on your project structure
import 'searchcategory.dart'; // Adjust the import based on your project structure

class Catogory extends StatelessWidget {
  final CategoryController categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final height = size.height;
    final width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Obx(() {
          return SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: width * 0.05),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Container(
                      height: height * 0.035,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.wallet,
                            color: Colors.orange,
                            size: width * 0.05,
                          ),
                          Text(
                            '00.00',
                            style: TextStyle(fontSize: width * 0.04),
                          ),
                          Icon(
                            Icons.add_circle_outline,
                            size: width * 0.05,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for consultant',
                        prefixIcon: Icon(Icons.search_rounded),
                        suffixIcon: Image.asset('assets/Faders.png'),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: height * 0.8,
                  width: double.infinity,
                  child: GridView.builder(
                      itemCount: categoryController.categoryList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0.2,
                        mainAxisSpacing: 0.2,
                        mainAxisExtent: width * 0.5,
                      ),
                      itemBuilder: (context, index) {
                        final category = categoryController.categoryList[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Searchcategory(),
                                settings: RouteSettings(
                                  arguments: {
                                    'name': category.title,
                                  },
                                ),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                height: width * 0.4,
                                width: width * 0.4,
                                child: Image.asset(
                                  category.image,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              Text(
                                category.title,
                                style: TextStyle(fontSize: width * 0.04),
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
