import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../values/colors.dart';
import '../text_widget.dart';

class ImageUpload extends StatelessWidget {
  const ImageUpload({
    super.key,
    required this.w,
    required this.text,
  });

  final double w;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: w,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 235, 235),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.camera_alt_outlined,
              color: AppColors.opacityGrey.withOpacity(0.8)),
          TextWidget(
              text: text,
              fontSize: 14.sp,
              textColor: AppColors.opacityGrey.withOpacity(0.8)),
        ],
      )),
    );
  }
}
