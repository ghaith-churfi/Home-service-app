import 'package:flutter/material.dart';

class CostumLoginWith extends StatelessWidget {
  const CostumLoginWith(
      {super.key,
      required this.icon,
      required this.browser,
      required this.onTap});
  final IconData icon;
  final String browser;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              border:
                  Border.all(width: 0.4, color: Colors.black.withOpacity(.2)),
              borderRadius: BorderRadius.circular(10)),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Login with $browser",
                style: const TextStyle(fontSize: 16),
              )
            ],
          )),
    );
  }
}
