import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    this.fontFamily,
    this.textColor,
    this.fontWeight,
    this.fontSize,
  });
  final String text;
  final String? fontFamily;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontFamily: fontFamily ?? 'roboto',
            color: textColor ?? Colors.black,
            fontWeight: fontWeight ?? FontWeight.normal,
            fontSize: fontSize ?? 14.8.sp));
  }
}
