import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:home_service/view/Widget/costum_Button.dart';
import 'package:home_service/view/Widget/dialog_createdSuccessfully.dart';
import 'package:home_service/view/Widget/pincodetextfield.dart';
import 'package:home_service/view/constant.dart';

class Dialog_Enteropt extends StatelessWidget {
  const Dialog_Enteropt({super.key});

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      scrollable: true,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Enter OTP",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),
          Container(
              child: Text(
            "A verification codes has been\nsent to 5467567",
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          )),
          const SizedBox(
            height: 10,
          ),
          const PincodeTextField(),
          CostumButton(
              text: 'Verify',
              onpressed: () {
                Get.back();
                showDialog(
                  context: context,
                  builder: (context) {
                    return const DialogCreatedsuccessfuly();
                  },
                );
              }),
          const SizedBox(height: 10),
          Row(
            children: [
              const Expanded(child: Text("Didn't receive the code?")),
              Expanded(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Resend (30s)",
                        style: TextStyle(color: Color(hexColor('#0474ED'))),
                      )))
            ],
          )
        ],
      ),
    );
  }
}
