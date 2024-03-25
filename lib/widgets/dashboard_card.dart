import 'package:_9app/values/colors.dart';
import 'package:_9app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
    this.widgetIcon,
    required this.cardColor,
  });

  final Widget? widgetIcon;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Card(
        surfaceTintColor: cardColor,
        elevation: 3.sp,
        color: Colors.white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(right: 15.w, left: 15.w, top: 15.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          widgetIcon ??
                              Container(
                                  height: 45.sp,
                                  width: 45.sp,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: cardColor),
                                  child: Container()),
                          const Gap(5),
                          Gap(7.w),
                          RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                  text: 'Bitcoin\n',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: Colors.black,
                                      fontFamily: 'roboto',
                                      fontWeight: FontWeight.w500),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'BTC',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.opacityBlack,
                                            fontSize: 16.sp))
                                  ])),
                        ]),
                    SizedBox(height: 65.h, width: 100),
                    Gap(5.h),
                    Row(children: [
                      TextWidget(
                          text: '\$6780',
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500),
                      Gap(90.w),
                      Row(children: [
                        const Icon(Icons.arrow_drop_up_rounded,
                            color: AppColors.primaryColor),
                        TextWidget(
                            text: '11.75%',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.primaryColor)
                      ])
                    ])
                  ])),
          const Gap(10)
        ]));
  }
}

class TransactionButtons extends StatelessWidget {
  const TransactionButtons({
    super.key,
    required this.onPressed,
    required this.color,
    required this.text,
    required this.shadowColor,
  });
  final Function() onPressed;
  final Color color, shadowColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SizedBox(
      width: w * 0.289.w,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              elevation: 4,
              shadowColor: shadowColor,
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.symmetric(horizontal: 28.w)),
          child: TextWidget(
            text: text,
            textColor: Colors.white,
            fontSize: 13.5.sp,
          )),
    );
  }
}
