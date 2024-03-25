import 'package:_9app/values/colors.dart';
import 'package:_9app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class KYCWidget extends StatelessWidget {
  const KYCWidget(
      {super.key,
      required this.w,
      required this.text,
      required this.indicatorImage,
      required this.hasPrefix,
      this.borderWidth,
      this.borderColor,
      this.onTap});

  final double? w, borderWidth;
  final String text, indicatorImage;
  final bool hasPrefix;
  final Color? borderColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return !hasPrefix
        ? GestureDetector(
            onTap: onTap,
            child: Container(
              width: w,
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.grey),
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidget(
                      text: text, fontSize: 17.sp, fontWeight: FontWeight.w400),
                  Image.asset(indicatorImage)
                ],
              )),
            ),
          )
        : Container(
            width: w,
            height: 50.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
                border: Border.all(
                    color: borderColor ?? AppColors.grey,
                    width: borderWidth ?? 1),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Row(children: [
                    Image.asset('assets/icons/doc.png'),
                    Gap(13.w),
                    TextWidget(
                        text: text,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400)
                  ])
                ])),
          );
  }
}
