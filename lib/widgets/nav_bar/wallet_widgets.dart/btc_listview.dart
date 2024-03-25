import 'package:_9app/values/colors.dart';
import 'package:_9app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BtcListview extends StatelessWidget {
  const BtcListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, i) => Container(
            color: AppColors.btcListtile,
            padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 10.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      radius: 20, child: Image.asset('assets/icons/btc.png')),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(text: btcTransact[i]['name'], fontSize: 18),
                        Gap(3.h),
                        RichText(
                            text: TextSpan(
                                text: 'A\$31675.00\n',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.grey,
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.w500),
                                children: <TextSpan>[
                              TextSpan(
                                  text: '50.485932 BTC',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.5.sp))
                            ]))
                      ]),
                  Gap(30.h),
                  SizedBox(
                      height: 70,
                      child: VerticalDivider(
                          color: Colors.grey.withOpacity(0.5),
                          indent: 10.h,
                          endIndent: 10.h)),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 120, height: 50),
                        Gap(3.h),
                        Row(children: [
                          TextWidget(
                              text: '2.34%',
                              textColor: AppColors.green,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp),
                          Gap(6.h),
                          TextWidget(
                              text: '24hrs',
                              // textColor: AppColors.green,
                              fontWeight: FontWeight.w400,
                              fontSize: 13.sp)
                        ])
                      ])
                ])),
        separatorBuilder: (context, i) => const Gap(5),
        itemCount: btcTransact.length);
  }
}

List<Map> btcTransact = [
  {'name': 'Bitcoin'},
  {'name': 'Ether'},
  {'name': 'Ethereum'},
  {'name': 'Bitcoin'},
  {'name': 'Bitcoin'},
];
