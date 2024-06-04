import 'package:chemistry/home_page.dart';
import 'package:chemistry/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class IntroducePage extends StatefulWidget {
  const IntroducePage({super.key});

  @override
  State<IntroducePage> createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
              titleWidget: Text(
                introduceTitle.tr,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              bodyWidget: Text(
                introduceSubtitleUzb.tr,
                textAlign: TextAlign.left,
              ),
              image: Lottie.asset("assets/introduce3.json")),
          PageViewModel(
              titleWidget: Text(
                introduceTitle.tr,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              bodyWidget: Text(
                introduceSubtitleUzb.tr,
                textAlign: TextAlign.left,
              ),
              image: Lottie.asset("assets/introduce2.json")),
          PageViewModel(
              titleWidget: Text(
                introduceTitle.tr,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              //body: introduceSubtitleEng,
              bodyWidget: Text(
                introduceSubtitleUzb.tr,
                textAlign: TextAlign.left,
              ),
              image: Lottie.asset("assets/introduce1.json")),
        ],
        onDone: () {
          Get.off(HomePage());
        },
        onSkip: () {
          Get.off(HomePage());
        },
        showSkipButton: true,
        skip: Text(
          "Skip".tr,
          style: TextStyle(color: Colors.blue),
        ),
        next: Icon(CupertinoIcons.right_chevron),
        dotsDecorator: DotsDecorator(
            activeShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            size: Size.square(10),
            activeSize: Size(20, 10),
            spacing: EdgeInsets.symmetric(horizontal: 3),
            activeColor: Colors.blue,
            color: Colors.deepOrange),
        done: Text(
          "Done".tr,
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
