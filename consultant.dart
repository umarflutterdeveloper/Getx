
import 'package:doctorconsultantapp/doctors.dart';
import 'package:doctorconsultantapp/funds.dart';
import 'package:doctorconsultantapp/main.dart';
import 'package:doctorconsultantapp/models/consultant-model.dart';
import 'package:doctorconsultantapp/notifications.dart';
import 'package:doctorconsultantapp/searchcategory.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Catogory.dart';
import 'earning_controller.dart';
class consultant extends StatelessWidget {
   consultant({super.key});

  @override
  List<category> categorylist = [
    category(
      image: 'assets/image1.png',
      title: 'Doctor',
    ),
    category(
      image: 'assets/image2.png',
      title: 'Lawyer',
    ),
    category(
      image: 'assets/astrologist.png',
      title: 'Astrologist',
    ),
    category(
      image: 'assets/youtuber.png',
      title: 'Youtubers',
    ),
    category(
      image: 'assets/teacher.png',
      title: 'Teachers',
    ),
    category(
      image: 'minister.png',
      title: 'Politician',
    ),
  ];
  List<consultantmodel> consultantlist = [
    consultantmodel(
      image: 'assets/image1.png',
      title: 'Doctor',
      doctor: 'Dr Vinod',
      specialization: 'Orthopedic',
      rating: '4.6',
    ),
    consultantmodel(
      image: 'assets/image1.png',
      title: 'Doctor',
      doctor: 'Dr Madhuri',
      specialization: 'Orthopedic',
      rating: '4.6',
    ),
    consultantmodel(
      image: 'assets/image1.png',
      title: 'Doctor',
      doctor: 'Dr Vinod',
      specialization: 'Orthopedic',
      rating: '4.6',
    ),
    consultantmodel(
      image: 'assets/image1.png',
      title: 'Doctor',
      doctor: 'Dr Madhuri',
      specialization: 'Orthopedic',
      rating: '4.6',
    ),
    consultantmodel(
      image: 'assets/image1.png',
      title: 'Doctor',
      doctor: 'Dr Vinod',
      specialization: 'Orthopedic',
      rating: '4.6',
    ),
    consultantmodel(
      image: 'assets/image1.png',
      title: 'Doctor',
      doctor: 'Dr Madhuri',
      specialization: 'Orthopedic',
      rating: '4.6',
    ),
  ];
  List<rate> ratelist = [
    rate(
        image: 'assets/image1.png',
        doctor: 'Dr.John Smith',
        specialization: 'clinical pschycologist',
        rating: '4.6'),
    rate(
        image: 'assets/image2.png',
        doctor: 'Dr.Umer',
        specialization: 'clinical pschycologist',
        rating: '4.6'),
    rate(
        image: 'assets/image3.png',
        doctor: 'Dr.Moeen',
        specialization: 'clinical pschycologist',
        rating: '4.6'),
    rate(
        image: 'assets/image1.png',
        doctor: 'Dr.John Smith',
        specialization: 'clinical pschycologist',
        rating: '4.6'),
    rate(
        image: 'assets/image2.png',
        doctor: 'Dr.Umer',
        specialization: 'clinical pschycologist',
        rating: '4.6'),
    rate(
        image: 'assets/image3.png',
        doctor: 'Dr.Moeen',
        specialization: 'clinical pschycologist',
        rating: '4.6'),
  ];
  List<Map<String, dynamic>> posts = [
    {
      'avatar': 'assets/user.png',
      'name': 'Dr John Doe',
      'specialty': 'Orthopedic Specialist',
      'time': '5 min',
      'message':
      'An honest endorsement of your product or service that usually comes from a customer.',
      'image': 'assets/doctor.png',
      'upVotes': 65,
      'downVotes': 5,
    },
    {
      'avatar': 'assets/user.png',
      'name': 'Taha',
      'specialty': 'Developer',
      'time': '5 min',
      'message':
      'An honest endorsement of your product or service that usually comes from a customer.',
      'image': 'assets/doctor.png',
      'upVotes': 65,
      'downVotes': 5,
    },
    {
      'avatar': 'assets/user.png',
      'name': 'Moeen',
      'specialty': 'Developer',
      'time': '5 min',
      'message':
      'An honest endorsement of your product or service that usually comes from a customer.',
      'image': 'assets/doctor.png',
      'upVotes': 65,
      'downVotes': 5,
    },
    // Add more posts here...
  ];
  bool drvinodraiting = false;
  final FlagController flagController = Get.put(FlagController());
  Widget build(BuildContext context) {
    print("Testing");
    var size = MediaQuery.sizeOf(context);
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: width * 0.04, right: width * 0.04, top: height * 0.06),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, John Doe',
                          style: TextStyle(fontSize: width * 0.04),
                        ),
                        Text(
                          'Find Your Consultant',
                          style: TextStyle(
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.2,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get .to (funds());
                      },
                      child: Container(
                          width: width * 0.16,
                          height: height * 0.03,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade200),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.wallet,
                                size: width * 0.04,
                                color: Colors.deepOrange,
                              ),
                              Text(
                                '100.16',
                                style: TextStyle(fontSize: width * 0.03),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get .to (notifications());
                      },
                      child: Container(
                        height: height * 0.03,
                        width: width * 0.04,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade200),
                        child: Icon(
                          Icons.notifications_none,
                          size: width * 0.04,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: height * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: width * 0.07,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.02),
                          child: Text(
                            "Search for ConsultanT",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                color: Colors.grey.shade700),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: Obx(
                              ()=> GestureDetector(
                            onTap: () {
                              flagController.setFlag(true);
                            },
                            child: Container(
                                height: height * 0.04,
                                decoration: BoxDecoration(
                                    color: flagController.flag.value ? Colors.black : Colors.white),
                                child: Center(
                                  child: Text(
                                    "Consultant",
                                    style: TextStyle(
                                        color: flagController.flag.value ? Colors.white : Colors.black,
                                        fontSize: width * 0.04),
                                  ),
                                )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Obx(
                              ()=> GestureDetector(
                            onTap: () {
                              flagController.flag.value = false;
                            },
                            child: Container(
                                height: height * 0.04,
                                decoration: BoxDecoration(
                                    color: flagController.flag.value
                                        ? Colors.grey.shade200
                                        : Colors.black),
                                child: Center(
                                    child: Text(
                                      "Following",
                                      style: TextStyle(
                                          fontSize: width * 0.04,
                                          color: flagController.flag.value ? Colors.black : Colors.white),
                                    ))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Obx(
                  ()=> flagController.flag.value
                      ? Column(
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: height * 0.18,
                            width: double.infinity,
                            child: Image.asset(
                              'assets/consultant.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: height * 0.03, left: width * 0.05),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Take Your First Consultant\nand Get 10% OFF',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: width * 0.05,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    Text(
                                      'Go  On Audionacally And Apply On\nYour  firstorder',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: width * 0.035),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.04,
                                ),
                                Image.asset(
                                  'assets/Vector.png',
                                  height: height * 0.15,
                                  width: width * 0.15,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Chose Your Category',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.055,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainPage(
                                    // inputValue: _controller.text,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'View all',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: width * 0.04,
                                  color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: height * 0.3,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categorylist.length,
                          itemBuilder: (context, index) {
                            final category = categorylist[index];
                            return Padding(
                              padding: EdgeInsets.only(left: width * 0.02),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Searchcategory(),
                                          settings:
                                          RouteSettings(arguments: {
                                            'name': category.title,
                                          })));
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height: height * 0.27,
                                      width: width * 0.4,
                                      child: ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        child: Image.asset(
                                          category.image,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: height * 0.23,
                                          left: width * 0.04),
                                      child: Text(
                                        category.title,
                                        style: TextStyle(
                                            fontSize: width * 0.05,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recommended',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.055,
                            ),
                          ),
                          Text(
                            'View all',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04,
                                color: Colors.red),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: height * 0.3,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: consultantlist.length,
                            itemBuilder: (context, index) {
                              final consultantmodel = consultantlist[index];
                              return Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  height: height * 0.27,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Colors.grey,
                                      )),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: width * 0.09,
                                        backgroundImage: AssetImage(
                                            consultantmodel.image),
                                      ),
                                      Text(
                                        consultantmodel.doctor,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: width * 0.06),
                                      ),
                                      Text(consultantmodel.title,
                                          style: TextStyle(
                                              fontSize: width * 0.04,
                                              color: Colors.grey.shade500)),
                                      SizedBox(
                                        height: height * 0.015,
                                      ),
                                      Container(
                                        height: height * 0.03,
                                        width: width * 0.14,
                                        color: Colors.pinkAccent.shade100
                                            .withOpacity(0.2),
                                        child: Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: width * 0.05,
                                            ),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            Text(
                                              style: TextStyle(
                                                  fontSize: width * 0.04),
                                              consultantmodel.rating,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top Rated Doctor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.055,
                            ),
                          ),
                          Text(
                            'View all',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.04,
                                color: Colors.red),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: height * 0.3,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: ratelist.length,
                          scrollDirection: Axis.vertical,
                          // shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final rate = ratelist[index];
                            return Padding(
                              padding: EdgeInsets.only(top: height * 0.01),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Doctors(),
                                          settings: RouteSettings(
                                              arguments: {
                                                'image': rate.image,
                                                'name': rate.doctor,
                                                'specialization':
                                                rate.specialization
                                              })));
                                },
                                child: Container(
                                  height: height * 0.09,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius:
                                      BorderRadius.circular(5)),
                                  child: Padding(
                                    padding:
                                    EdgeInsets.only(left: width * 0.02),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: width * 0.07,
                                          backgroundImage:
                                          AssetImage(rate.image),
                                        ),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              rate.doctor,
                                              style: TextStyle(
                                                  fontSize: width * 0.05,
                                                  fontWeight:
                                                  FontWeight.bold),
                                            ),
                                            Text(
                                              rate.specialization,
                                              style: TextStyle(
                                                  fontSize: width * 0.035,
                                                  color:
                                                  Colors.grey.shade500),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: width * 0.18,
                                        ),
                                        Container(
                                          height: height * 0.03,
                                          width: width * 0.17,
                                          color: Colors.pinkAccent.shade100
                                              .withOpacity(0.2),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              SizedBox(width: width * 0.01),
                                              Text(
                                                rate.rating,
                                                style: TextStyle(
                                                    fontSize: width * 0.04),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: height * 0.17,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              'assets/background.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.03),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.025,
                                    ),
                                    Text(
                                      'Refer And Earn',
                                      style: TextStyle(
                                          fontSize: width * 0.07,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      'Invite Your Friend and get\nrewarded',
                                      style: TextStyle(
                                          fontSize: height * 0.015,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.06,
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(top: height * 0.01),
                                  child: Image.asset(
                                    height: height * 0.2,
                                    width: width * 0.2,
                                    'assets/Vector.png',
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                    ],
                  )
                      : Column(
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: height * 0.7,
                        child: ListView.builder(
                            itemCount: posts.length,
                            itemBuilder: (context, index) {
                              final post = posts[index];
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Doctors(),settings: RouteSettings(arguments: {
                                      'Image' : post['avatar'],
                                      'Name' : post['name'],
                                      'specialization' : post['specialty']
                                    })));
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius:
                                        BorderRadius.circular(5)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: width * 0.05,
                                                    backgroundImage:
                                                    AssetImage(
                                                        post['avatar']),
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.02,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        post['name'],
                                                        style: TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .bold,
                                                            fontSize:
                                                            width *
                                                                0.04),
                                                      ),
                                                      SizedBox(
                                                        height:
                                                        height * 0.001,
                                                      ),
                                                      Text(
                                                        '${post['specialty']} . ${post['time']}',
                                                        style: TextStyle(
                                                            color:
                                                            Colors.grey,
                                                            fontSize:
                                                            width *
                                                                0.03),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Icon(
                                                Icons.more_vert,
                                                color: flagController.flag.value
                                                    ? Colors.blue
                                                    : Colors.yellow,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: height * 0.02,
                                          ),
                                          Text(
                                            post['message'],
                                            style: TextStyle(
                                                fontSize: width * 0.035,
                                                color: Colors.black,
                                                fontWeight:
                                                FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Container(
                                            height: height * 0.4,
                                            width: double.infinity,
                                            child: Image(
                                              image:
                                              AssetImage(post['image']),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Row(
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'assets/arrowup.png'),
                                                width: width * 0.05,
                                              ),
                                              Text(
                                                '${post['upVotes']}',
                                                style: TextStyle(
                                                    fontSize: width * 0.05),
                                              ),
                                              SizedBox(
                                                width: width * 0.02,
                                              ),
                                              Image(
                                                image: AssetImage(
                                                    'assets/ArrowDown.png'),
                                                width: width * 0.05,
                                              ),
                                              Text(
                                                '${post['downVotes']}',
                                                style: TextStyle(
                                                    fontSize: width * 0.05),
                                              ),
                                              SizedBox(
                                                width: width * 0.4,
                                              ),
                                              Image(
                                                image: AssetImage(
                                                    'assets/ShareFat.png'),
                                                width: width * 0.05,
                                              ),
                                              Text(
                                                'Share',
                                                style: TextStyle(
                                                    fontSize: width * 0.05),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
