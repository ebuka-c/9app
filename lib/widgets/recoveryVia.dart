import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../values/colors.dart';

class RecoveryVia extends StatelessWidget {
  const RecoveryVia(
      {super.key,
      required this.imageIcon,
      required this.info,
      required this.via});
  final String imageIcon, info, via;

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.only(top: h * 0.03),
        height: h * 0.13,
        width: w * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 3, color: Colors.grey.withOpacity(0.5))),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 14.h),
                  child: Image.asset(imageIcon)),
              Gap(7.w),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(via,
                        style: const TextStyle(
                            fontFamily: 'roboto',
                            color: AppColors.secondaryText,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: h * 0.005),
                    SizedBox(
                        width: w * 0.58,
                        child: Text(info, // Your number,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontFamily: 'roboto',
                                fontWeight: FontWeight.w600)))
                  ])
            ]));
  }
}
