import 'package:flutter/material.dart';

class CostumButton extends StatelessWidget {
  const CostumButton({super.key, required this.text, required this.onpressed});
  final String text;
  final void Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onpressed,
        padding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minWidth: 335,
        height: 56,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        color: const Color.fromARGB(224, 0, 47, 255));
  }
}
