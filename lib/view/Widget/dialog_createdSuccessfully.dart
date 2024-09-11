import 'package:flutter/material.dart';
import 'package:home_service/view/Widget/circle_successfully.dart';
import 'package:home_service/view/Widget/costum_Button.dart';

class DialogCreatedsuccessfuly extends StatelessWidget {
  const DialogCreatedsuccessfuly({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      content: Column(
        children: [
          Circle_successfuly(),
          SizedBox(
            height: 20,
          ),
          Text(
            textAlign: TextAlign.center,
            "Account Created\nSuccessfully",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 10),
          Text(
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
              "Your account created successfully.\nListen your favourite music"),
          SizedBox(height: 20),
          CostumButton(text: 'Back to Home', onpressed: () {})
        ],
      ),
    );
  }
}
