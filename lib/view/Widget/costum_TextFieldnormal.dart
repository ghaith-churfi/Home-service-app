import 'package:flutter/material.dart';

class CostumTextfieldNormal extends StatelessWidget {
  const CostumTextfieldNormal({super.key, required this.labeltext});
  final String labeltext;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextField(
          decoration: InputDecoration(
              labelText: labeltext,
              labelStyle: Theme.of(context).textTheme.labelMedium,
              alignLabelWithHint: true,
              isDense: true,
              hintTextDirection: TextDirection.ltr,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black.withOpacity(.2))),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black.withOpacity(.2))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(224, 0, 47, 255))))),
    );
  }
}
