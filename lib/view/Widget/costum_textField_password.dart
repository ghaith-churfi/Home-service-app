import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CostumTextfieldPassword extends StatefulWidget {
  const CostumTextfieldPassword({super.key});

  @override
  State<CostumTextfieldPassword> createState() =>
      _CostumTextfieldPasswordState(hidePassword: false);
}

class _CostumTextfieldPasswordState extends State<CostumTextfieldPassword> {
  bool hidePassword;

  _CostumTextfieldPasswordState({required this.hidePassword});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: TextField(
          // cursorOpacityAnimates: true,
          obscureText: hidePassword,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: hidePassword == true
                    ? FaIcon(FontAwesomeIcons.eyeSlash)
                    : FaIcon(FontAwesomeIcons.eye),
                onPressed: () {
                  hidePassword = !hidePassword;
                  setState(() {});
                },
              ),
              labelText: 'Password',
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
                  borderSide: BorderSide(
                      color: const Color.fromARGB(224, 0, 47, 255))))),
    );
  }
}
