import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:home_service/view/login_screen_view/login_screen_view.dart';
import 'package:home_service/view/Widget/costum_on_boarding_bodypage.dart';

// ignore: must_be_immutable
class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _controller,
      scrollDirection: Axis.horizontal,
      children: [
        OnBoardingCotsumBodypage(
          imagepath: 'assets/images/on_boarding1.png',
          enabledskip: true,
          skipButton: 'skip',
          title: "Find best Solution\n\t\t\tfor your home",
          subtitle:
              "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Fringilla in sed risus sit.",
          onPressed: () {
            _controller.jumpToPage(1);
          },
          textButton: 'Next',
        ),
        OnBoardingCotsumBodypage(
          imagepath: 'assets/images/on_boarding2.png',
          enabledskip: true,
          skipButton: 'skip',
          title: "Provide best quality\n service in budget",
          subtitle:
              "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Fringilla in sed risus sit.",
          onPressed: () {
            _controller.jumpToPage(2);
          },
          textButton: 'Next',
        ),
        OnBoardingCotsumBodypage(
            imagepath: 'assets/images/on_boarding1.png',
            enabledskip: false,
            title: "\tGet best servise\nexperience with us",
            subtitle:
                "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Fringilla in sed risus sit.",
            onPressed: () {
              Get.offAll(() => LoginScreenView(),
                  transition: Transition.rightToLeft,
                  duration: Duration(seconds: 1));
            },
            textButton: 'Get Started')
      ],
    );
  }
}
