import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'text_widget.dart';

class QrButtons extends StatelessWidget {
  const QrButtons(
      {super.key,
      required this.onTap,
      required this.buttonColor,
      required this.text,
      required this.textColor});

  final Function() onTap;
  final Color buttonColor, textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            height: 50.h,
            width: 120.w,
            decoration: BoxDecoration(
                color: buttonColor, borderRadius: BorderRadius.circular(150)),
            child: Center(
                child: TextWidget(
                    text: text,
                    fontSize: 14.sp,
                    textColor: textColor,
                    fontWeight: FontWeight.w700))));
  }
}
