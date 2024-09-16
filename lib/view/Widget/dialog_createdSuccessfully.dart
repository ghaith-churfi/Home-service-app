import 'package:flutter/material.dart';
import 'package:home_service/view/Widget/circle_successfully.dart';
import 'package:home_service/view/Widget/costum_Button.dart';

class DialogCreatedsuccessfuly extends StatelessWidget {
  const DialogCreatedsuccessfuly({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      scrollable: true,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Circle_successfuly(),
          const SizedBox(
            height: 20,
          ),
          Text(
            textAlign: TextAlign.center,
            "Account Created\nSuccessfully",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),
          Text(
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
              "Your account created successfully.\nListen your favourite music"),
          const SizedBox(height: 20),
          CostumButton(text: 'Back to Home', onpressed: () {})
        ],
      ),
    );
  }
}
