import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoDisplay extends StatelessWidget {
  final double? height;
  final double? width;
  const LogoDisplay({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height ?? 150.h,
        width: width ?? 130.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: const Offset(0, 8))
            ]),
        child: Center(child: Image.asset('assets/images/logo.png')));
  }
}
