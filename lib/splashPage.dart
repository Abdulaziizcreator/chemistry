import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'introduce.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Container(
                height: 400,
                width: 250,
                child: Lottie.asset("assets/splash1.json"),
              ),
            ),
            Expanded(
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      15,
                    ),
                    topRight: Radius.circular(
                      15,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        var locale = Locale('uz', "Uzb");
                        Get.updateLocale(locale);
                        Get.off(IntroducePage());
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          margin: EdgeInsets.only(top: 50, bottom: 5),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                            child: Text(
                              "🇺🇿 O'zbekcha",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        var locale = Locale('kril', "KRIL");
                        Get.updateLocale(locale);
                        Get.off(IntroducePage());
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          margin: EdgeInsets.only(top: 10, bottom: 5),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                            child: Text(
                              "🇺🇿 Ўзбекча",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        var locale = Locale('ru', "RUS");
                        Get.updateLocale(locale);
                        Get.off(IntroducePage());
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          margin: EdgeInsets.only(top: 10, bottom: 5),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                            child: Text(
                              "🇷🇺 Русский",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
