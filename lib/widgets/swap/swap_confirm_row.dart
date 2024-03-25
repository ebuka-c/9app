import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../values/colors.dart';
import '../text_widget.dart';

class SwapConfirmRow extends StatelessWidget {
  const SwapConfirmRow(
      {super.key,
      this.fromTo,
      this.image,
      this.coinName,
      required this.w,
      this.amounts});

  final String? fromTo, image, coinName, amounts;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
              text: fromTo ?? '',
              textColor: AppColors.greyText,
              fontSize: 18.sp),
          image == null && coinName == null
              ? Row(
                  children: [
                    TextWidget(
                        text: amounts ?? '',
                        textAlign: TextAlign.end,
                        fontSize: 18.sp,
                        textColor: AppColors.swapGrey)
                  ],
                )
              : Row(children: [
                  Image.asset(image ?? '', scale: 0.8),
                  Gap(20.w),
                  SizedBox(
                      width: w * 0.16.w,
                      child: TextWidget(
                          text: coinName ?? '',
                          fontSize: 18.sp,
                          textColor: AppColors.swapGrey))
                ])
        ]);
  }
}
