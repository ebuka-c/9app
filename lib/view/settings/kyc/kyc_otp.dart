import 'package:_9app/controllers/pin_controller.dart';
import 'package:_9app/routes/names.dart';
import 'package:_9app/values/colors.dart';
import 'package:_9app/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../widgets/pin_code_widget/pin_code_widget.dart';
import '../../../widgets/text_widget.dart';

class KycOTP extends GetView<PinController> {
  KycOTP({super.key});

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(title: TextWidget(text: 'KYC', fontSize: 23.sp)),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 25.w),
              child: Column(children: [
                Row(children: [
                  TextWidget(
                      text: ' Code have been sent to your email:',
                      fontSize: 16.sp,
                      textAlign: TextAlign.start,
                      textColor: AppColors.grey,
                      fontWeight: FontWeight.w500)
                ]),
                Gap(5.h),
                Row(children: [
                  TextWidget(
                      text: ' omejefaith@gmail.com',
                      textAlign: TextAlign.start,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      textColor: AppColors.primaryColor)
                ]),
                Gap(60.h),
                PinCodeField(controller: _controller, w: w),
                Gap(30.h),
                TextWidget(
                  text: controller.countdown.value,
                  fontSize: 16.sp,
                  textAlign: TextAlign.center,
                ),
                Gap(15.h),
                TextWidget(
                    text: 'Resend Code',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.primaryColor,
                    textAlign: TextAlign.center),
                Gap(250.h),
                TransactionButton(
                    w: w,
                    text: 'Verify',
                    onTap: () => Get.toNamed(AppRoutes.kycVerified))
              ])),
        ));
  }
}
