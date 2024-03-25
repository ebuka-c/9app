import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../values/colors.dart';

class PinCodeField extends StatelessWidget {
  const PinCodeField({
    super.key,
    // required TextEditingController controller,
    required this.w,
    required this.controller,
  });

  final TextEditingController controller;
  final double w;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
        keyboardType: TextInputType.number,
        appContext: context,
        controller: controller,
        length: 4,
        onCompleted: (value) {},
        blinkWhenObscuring: true,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
            activeFillColor: AppColors.primaryColor,
            fieldWidth: w * 0.17,
            selectedFillColor: AppColors.fillColor,
            inactiveFillColor: Colors.grey,
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(15),
            fieldHeight: 50,
            inactiveColor: Colors.grey,
            activeColor: AppColors.primaryColor,
            selectedColor: Colors.brown));
  }
}
