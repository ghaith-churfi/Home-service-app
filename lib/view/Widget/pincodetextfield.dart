import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PincodeTextField extends StatelessWidget {
  const PincodeTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      appContext: context,
      length: 4,
      showCursor: true,
      autoFocus: true,
      autoDismissKeyboard: true,
      pinTheme: PinTheme(
          selectedColor: const Color.fromARGB(224, 0, 47, 255),
          inactiveColor: Colors.black.withOpacity(.1),
          activeColor: Colors.black.withOpacity(.1),
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
