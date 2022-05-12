import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Introduction 1",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.",
          image: Image.asset(
            'images/gambar1.png',
          ),
        ),
        PageViewModel(
          title: "Introduction 2",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.",
          image: Image.asset(
            'images/gambar2.png',
          ),
        ),
        PageViewModel(
          title: "Introduction 3",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.",
          image: Image.asset(
            'images/gambar3.png',
          ),
        ),
        PageViewModel(
          title: "Explore the app",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.",
          image: Image.asset(
            'images/gambar4.png',
          ),
          footer: ElevatedButton(
            onPressed: () {
              // On button presed
            },
            child: Container(
              width: 200,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(
                'Get Started',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ],
      showNextButton: true,
      showDoneButton: false,
      showSkipButton: true,
      skip: Text(
        'Skip',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blue),
      ),
      next: (Container(
        width: Get.width,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Text(
          'Next',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      )),
      baseBtnStyle: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Colors.blue,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    ) //Material
        );
  }
}
