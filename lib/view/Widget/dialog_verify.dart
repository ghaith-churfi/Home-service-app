import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:home_service/view/Widget/dialog_enterOpt.dart';
import 'package:home_service/view/constant.dart';

class Dialog_verify extends StatelessWidget {
  const Dialog_verify({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      contentPadding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      alignment: AlignmentDirectional.center,
      scrollable: true,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Verify Your Email Address",
            style: TextStyle(
                fontSize: 18,
                inherit: false,
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 10),
          Text(
            "5467567",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Container(
            child: Text(
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
                "We will send the authentication code\nto your mobile number you enterd,\nDo you want continue?"),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MaterialButton(
                  minWidth: 20,
                  height: 50,
                  onPressed: () {
                    Get.back();
                  },
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1, color: Color(hexColor('#0474ED'))),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                        color: Color(
                          hexColor('#0474ED'),
                        ),
                        inherit: false),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: MaterialButton(
                    minWidth: 20,
                    height: 50,
                    color: Color(hexColor('#0474ED')),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      Get.back();
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const Dialog_Enteropt();
                          });
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(color: Colors.white, inherit: false),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
