import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:home_service/view/Widget/costum_Button.dart';
import 'package:home_service/view/Widget/costum_TextFieldnormal.dart';
import 'package:home_service/view/Widget/costum_textField_password.dart';
import 'package:home_service/view/Widget/dialog_verify.dart';

class SignupScreenView extends StatelessWidget {
  const SignupScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
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
              "Create New Account",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Container(
              child: Text(
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                  "Set up your username and password.\nYou can always change it later."),
            ),
            const SizedBox(
              height: 15,
            ),
            const CostumTextfieldNormal(labeltext: "Enter Name"),
            const SizedBox(
              height: 15,
            ),
            const CostumTextfieldNormal(labeltext: "Email Address"),
            const SizedBox(
              height: 15,
            ),
            const CostumTextfieldNormal(labeltext: "Mobile Number"),
            const SizedBox(
              height: 15,
            ),
            const CostumTextfieldPassword(),
            const SizedBox(
              height: 15,
            ),
            const CostumTextfieldPassword(),
            const SizedBox(
              height: 15,
            ),
            CostumButton(
              text: 'Signup',
              onpressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog_verify();
                    });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                    onPressed: () {
                      Get.back();
                      FocusScope.of(context).unfocus();
                    },
                    child: const Text("Login",
                        style: TextStyle(
                            color: Color.fromARGB(223, 60, 92, 235)))),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
