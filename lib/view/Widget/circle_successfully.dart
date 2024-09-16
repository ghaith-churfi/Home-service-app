import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:home_service/view/constant.dart';

class Circle_successfuly extends StatelessWidget {
  const Circle_successfuly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      repeat: true,
      startDelay: const Duration(microseconds: 100),
      curve: Curves.easeIn,
      glowCount: 1,
      glowColor: const Color.fromARGB(255, 1, 111, 255),
      child: Stack(alignment: AlignmentDirectional.center, children: [
        CircleAvatar(
          backgroundColor: Color(Constant.primaryColor),
          radius: 42,
        ),
        const CircleAvatar(
          radius: 14,
          backgroundColor: Colors.white,
        ),
        CircleAvatar(
          radius: 13,
          backgroundColor: Color(Constant.primaryColor),
          child: const Icon(
            size: 18,
            Icons.done,
            color: Colors.white,
          ),
        )
      ]),
    );
  }
}
//  backgroundColor: Color.fromARGB(255, 201, 224, 255),
//         radius: 60,