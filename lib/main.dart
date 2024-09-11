import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:home_service/view/splash_screen_view/splash_screen_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
            fontFamily: 'Lexend',
            textTheme: TextTheme(
                labelMedium: TextStyle(
                    color: Colors.black.withOpacity(.3), fontSize: 16),
                bodyMedium: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
                bodySmall: TextStyle(
                    color: Colors.black.withOpacity(0.7), fontSize: 13),
                bodyLarge: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w800))),
        debugShowCheckedModeBanner: false,
        home: SplashScreenView());
  }
}
