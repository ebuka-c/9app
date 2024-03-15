import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../values/colors.dart';

class CoinsTab extends StatelessWidget {
  const CoinsTab({
    super.key,
    required this.name,
    required this.abbr,
    required this.rate,
    required this.percentage,
  });

  final String name, abbr, rate, percentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 22.w, top: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(backgroundColor: Colors.black),
          RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                  text: name,
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: abbr,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColors.opacityBlack,
                            fontSize: 14.sp))
                  ])),
          Container(
            height: 50,
            width: 150.w,
          ),
          RichText(
              textAlign: TextAlign.end,
              text: TextSpan(
                  text: 'USDC $rate\n',
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: percentage,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColors.green,
                            fontSize: 13.sp))
                  ])),
        ],
      ),
    );
  }
}
