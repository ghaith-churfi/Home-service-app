import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:home_service/view/on_boarding_view/on_boarding_view.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return FlutterSplashScreen(
        backgroundColor: Colors.black,
        splashScreenBody: Image.asset(
          "assets/images/Splash_Screen.png",
          width: width,
          height: height,
          fit: BoxFit.fitWidth,
        ),
        // duration: Duration(seconds: 10),
        nextScreen: Scaffold(
          body: OnBoardingView(),
        ));
  }
}
