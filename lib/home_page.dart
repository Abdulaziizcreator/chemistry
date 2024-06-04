import 'package:chemistry/quizPage.dart';
import 'package:chemistry/service/toast_service.dart';
import 'package:chemistry/strings.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Stack(
              children: [
                ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(colors: [
                    Colors.blue,
                    Colors.blueGrey,
                    Colors.yellow,
                    Colors.green
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)
                      .createShader(bounds),
                  child: Container(
                    height: 110,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        gradient:
                            LinearGradient(colors: [Colors.blue, Colors.green]),
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/homepage.jpg",
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        categoryUzb.tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 18),
                      Text(
                        titleHomePageUzb.tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        subtitleHomePageUzb.tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showToast(loadingEng);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            height: 175,
                            width: 140,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Multimedia",
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Lorem ipsum dolor",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Container(
                                        height: 90,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/1card.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(QuizPage());
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            height: 175,
                            width: 140,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Multimedia",
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Quiz Game",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Container(
                                        height: 110,
                                        width: 130,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/2card.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showToast(loadingEng);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            height: 175,
                            width: 140,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Multimedia",
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Lorem ipsum dolor",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Container(
                                        height: 110,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/3card.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          showToast(loadingEng);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            height: 175,
                            width: 140,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Multimedia",
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Lorem ipsum dolor",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Container(
                                        height: 110,
                                        width: 130,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/4card.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  void showToastMe() =>
      Fluttertoast.showToast(msg: loadingEng, gravity: ToastGravity.BOTTOM);
}
