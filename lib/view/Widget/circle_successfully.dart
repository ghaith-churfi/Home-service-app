import 'package:flutter/material.dart';

class Circle_successfuly extends StatelessWidget {
  const Circle_successfuly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(alignment: AlignmentDirectional.center, children: [
      CircleAvatar(
        backgroundColor: Color.fromARGB(255, 201, 224, 255),
        radius: 60,
      ),
      CircleAvatar(
        backgroundColor: Color.fromARGB(224, 0, 47, 255),
        radius: 42,
      ),
      CircleAvatar(
        radius: 14,
        backgroundColor: Colors.white,
      ),
      CircleAvatar(
        radius: 13,
        backgroundColor: Color.fromARGB(224, 0, 47, 255),
        child: Icon(
          size: 18,
          Icons.done,
          color: Colors.white,
        ),
      )
    ]);
  }
}
