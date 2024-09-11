import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:home_service/view/Widget/costum_Button.dart';
import 'package:home_service/view/Widget/costum_TextFieldnormal.dart';
import 'package:home_service/view/Widget/costum_login_with.dart';
import 'package:home_service/view/Widget/costum_textField_password.dart';
import 'package:home_service/view/constant.dart';
import 'package:home_service/view/signin_screen_view/signup_screen_view.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 200,
              height: 60,
              child: Image.asset(
                'assets/images/Logo.png',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Welcome Back",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Container(
              child: Text(
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                  "Log in to your account using\nMobile number or social networks"),
            ),
            const SizedBox(
              height: 10,
            ),
            CostumLoginWith(
              onTap: () {},
              icon: Icons.apple,
              browser: 'Apple',
            ),
            const SizedBox(
              height: 10,
            ),
            CostumLoginWith(
                onTap: () {},
                icon: Icons.g_mobiledata_outlined,
                browser: 'Goolge'),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Or continue with social account",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 20,
            ),
            const CostumTextfieldNormal(
              labeltext: 'Mobile Number',
            ),
            const SizedBox(
              height: 10,
            ),
            const CostumTextfieldPassword(),
            Container(
              alignment: Alignment.centerRight,
              width: width,
              child: TextButton(
                  onPressed: () {},
                  child: Text("Forget Password ?",
                      style: TextStyle(color: Color(hexColor('#0474ED'))))),
            ),
            const SizedBox(
              height: 10,
            ),
            CostumButton(text: 'Login', onpressed: () {}),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Didn't have an account?"),
                TextButton(
                    onPressed: () {
                      Get.to(() => SignupScreenView(),
                          transition: Transition.downToUp);
                      FocusScope.of(context).unfocus();
                    },
                    child: Text("Signup",
                        style: TextStyle(color: Color(hexColor('#0474ED'))))),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
