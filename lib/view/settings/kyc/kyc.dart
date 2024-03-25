import 'package:_9app/routes/names.dart';
import 'package:_9app/values/colors.dart';
import 'package:_9app/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../widgets/profile_widgets/kyc_widget.dart';
import '../../../widgets/text_widget.dart';

class KYC extends StatefulWidget {
  const KYC({super.key});

  @override
  State<KYC> createState() => _KYCState();
}

class _KYCState extends State<KYC> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(title: TextWidget(text: 'KYC', fontSize: 23.sp)),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 18.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextWidget(
                text: ' KYC Verification',
                textAlign: TextAlign.start,
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                textColor: AppColors.primaryColor),
            Gap(10.h),
            KYCWidget(
                w: w,
                text: 'Email Verification',
                indicatorImage: 'assets/icons/done.png',
                hasPrefix: false),
            Gap(15.h),
            KYCWidget(
                w: w,
                text: 'Phone Number Verification',
                indicatorImage: 'assets/icons/done.png',
                hasPrefix: false),
            Gap(15.h),
            KYCWidget(
                w: w,
                text: 'Finger Print Recognition',
                indicatorImage: 'assets/icons/undone.png',
                hasPrefix: false),
            Gap(15.h),
            KYCWidget(
                w: w,
                text: 'Finger Print Recognition',
                indicatorImage: 'assets/icons/undone.png',
                hasPrefix: false),

            //Select a valid Government-issued document
            Gap(30.h),
            TextWidget(
                text: ' Select a valid Government-issued document',
                textAlign: TextAlign.start,
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                textColor: AppColors.primaryColor),
            Gap(10.h),

            SizedBox(
              height: 200.h,
              child: ListView.separated(
                  itemBuilder: (context, i) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = i;
                          });
                        },
                        child: KYCWidget(
                            w: w,
                            text: _idMode[i]['id_mode'],
                            indicatorImage: 'assets/icons/undone.png',
                            borderColor: selectedIndex == i
                                ? AppColors.primaryColor
                                : AppColors.grey,
                            borderWidth: selectedIndex == i ? 3 : 1,
                            hasPrefix: true),
                      ),
                  separatorBuilder: (context, i) => Gap(15.h),
                  itemCount: _idMode.length),
            ),
            const Row(children: [
              Expanded(
                  child: Text(
                      'This information is used for identity verification only, and will be kept secure by 9App',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'roboto')))
            ]),
            Gap(30.h),
            TransactionButton(
                w: w,
                text: 'Continue',
                onTap: () => Get.toNamed(AppRoutes.kycVerify))
          ]),
        ));
  }
}

List _idMode = [
  {'id_mode': 'Identity Card'},
  {'id_mode': 'Passport'},
  {'id_mode': 'Drivers License'}
];
