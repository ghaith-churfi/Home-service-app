import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:home_service/view/Widget/costum_Button.dart';
import 'package:home_service/view/Widget/dialog_createdSuccessfully.dart';
import 'package:home_service/view/Widget/pincodetextfield.dart';

class Dialog_Enteropt extends StatelessWidget {
  const Dialog_Enteropt({super.key});

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    return AlertDialog(
      scrollable: true,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Enter OTP",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 10),
          Container(
              child: Text(
            "A verification codes has been\nsent to 5467567",
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          )),
          SizedBox(
            height: 10,
          ),
          PincodeTextField(),
          CostumButton(
              text: 'Verify',
              onpressed: () {
                Get.back();
                showDialog(
                  context: context,
                  builder: (context) {
                    return DialogCreatedsuccessfuly();
                  },
                );
              }),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(child: Text("Didn't receive the code?")),
              Expanded(
                  child:
                      TextButton(onPressed: () {}, child: Text("Resend (30s)")))
            ],
          )
        ],
      ),
    );
  }
}
