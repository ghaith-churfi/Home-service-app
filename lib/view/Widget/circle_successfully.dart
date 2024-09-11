import 'package:flutter/material.dart';
import 'package:home_service/view/constant.dart';

class Circle_successfuly extends StatelessWidget {
  const Circle_successfuly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.center, children: [
      const CircleAvatar(
        backgroundColor: Color.fromARGB(255, 201, 224, 255),
        radius: 60,
      ),
      CircleAvatar(
        backgroundColor: Color(hexColor('#0474ED')),
        radius: 42,
      ),
      const CircleAvatar(
        radius: 14,
        backgroundColor: Colors.white,
      ),
      CircleAvatar(
        radius: 13,
        backgroundColor: Color(hexColor('#0474ED')),
        child: const Icon(
          size: 18,
          Icons.done,
          color: Colors.white,
        ),
      )
    ]);
  }
}
