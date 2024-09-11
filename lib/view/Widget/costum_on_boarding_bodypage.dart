import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:home_service/view/Widget/costum_Button.dart';
import 'package:home_service/view/login_screen_view/login_screen_view.dart';

class OnBoardingCotsumBodypage extends StatelessWidget {
  OnBoardingCotsumBodypage(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.onPressed,
      required this.textButton,
      this.skipButton,
      required this.enabledskip,
      required this.imagepath});
  final String title;
  final String subtitle;
  final String textButton;
  final String? skipButton;
  final bool enabledskip;
  final String imagepath;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          width: width,
          height: height,
          bottom: 0,
          child: Image.asset(
            imagepath,
          ),
        ),
        enabledskip == true
            ? Positioned(
                right: 20,
                top: 26,
                child: MaterialButton(
                    minWidth: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.white.withOpacity(.67),
                    onPressed: () {
                      Get.offAll(() => LoginScreenView(),
                          transition: Transition.rightToLeft,
                          duration: Duration(seconds: 1));
                    },
                    child: Text(
                      skipButton!,
                      style: TextStyle(color: Color.fromARGB(223, 60, 92, 235)),
                    )))
            : Text(""),
        Positioned(
            bottom: 0,
            child: Container(
              color: Colors.white,
              width: width,
              height: height / 2.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CostumButton(text: textButton, onpressed: onPressed)
                ],
              ),
            ))
      ],
    );
  }
}
// rgba(4, 116, 237, 1)