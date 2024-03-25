import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../values/colors.dart';
import 'text_widget.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.circularRadius,
    this.fontWeight,
    this.fontSize,
    this.icon,
    this.color,
    this.boxShadow,
  });

  final double height;
  final double width;
  final String text;
  final double? fontSize;
  final double circularRadius;
  final List<BoxShadow>? boxShadow;
  final Widget? icon;
  final Color? color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(circularRadius),
        boxShadow: boxShadow,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Center(child: icon),
            ),
            Text(
              text,
              style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: fontSize ?? w * 0.05,
                  color: Colors.white,
                  fontWeight: fontWeight ?? FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}

//Transaction button
class TransactionButton extends StatelessWidget {
  const TransactionButton(
      {super.key,
      required this.w,
      required this.text,
      required this.onTap,
      this.border,
      this.textColor,
      this.fontWeight,
      this.boxShadow});

  final double w;
  final String text;
  final Function() onTap;
  final BoxBorder? border;
  final Color? textColor;
  final FontWeight? fontWeight;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            height: 60.h,
            width: w,
            decoration: border == null
                ? BoxDecoration(
                    color: AppColors.primaryColor,
                    border: border,
                    borderRadius: BorderRadius.circular(10.sp),
                    boxShadow: boxShadow ??
                        [
                          BoxShadow(
                              color: AppColors.primaryColor.withOpacity(0.5),
                              blurRadius: 5,
                              offset: const Offset(0, 3))
                        ])
                : BoxDecoration(
                    border: border, borderRadius: BorderRadius.circular(10.sp)),
            child: Center(
                child: TextWidget(
                    text: text,
                    textColor: textColor ?? Colors.white,
                    fontSize: 18,
                    fontWeight: fontWeight ?? FontWeight.bold))));
  }
}
