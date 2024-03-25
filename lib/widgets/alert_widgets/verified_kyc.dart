import 'package:_9app/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../custom_buttons.dart';
import '../text_widget.dart';

class VerifiedWidget extends StatelessWidget {
  const VerifiedWidget(
      {super.key,
      required this.w,
      required this.subtitle,
      required this.title,
      required this.onTap});

  final double w;
  final String subtitle, title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/images/kycimg.png'),
          Gap(20.h),
          TextWidget(text: title, fontSize: 25.sp, fontWeight: FontWeight.w500),
          Gap(5.h),
          TextWidget(
              text: subtitle,
              textAlign: TextAlign.center,
              textColor: AppColors.opacityBlack,
              fontWeight: FontWeight.w500),
          Gap(55.h),
          TransactionButton(w: w, text: 'Back', onTap: onTap)
        ])));
  }
}
