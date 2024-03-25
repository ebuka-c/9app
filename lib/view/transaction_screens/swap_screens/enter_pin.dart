import 'package:_9app/widgets/custom_buttons.dart';
import 'package:_9app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../values/colors.dart';

class EnterPinSwap extends StatelessWidget {
  EnterPinSwap({super.key});

  final _pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(title: TextWidget(text: 'Swap', fontSize: 23.sp)),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                          text: 'Enter Transaction Pin',
                          fontWeight: FontWeight.bold,
                          fontSize: 25.sp),
                      IconButton(
                          onPressed: () => Get.back(),
                          icon:
                              Icon(Icons.close_rounded, weight: 8.sp, size: 25))
                    ]),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  TextWidget(
                      text:
                          'Enter your 4 Digit Transaction PIN to confirm \nTransaction',
                      textColor: AppColors.grey,
                      fontSize: 16.sp)
                ]),
                Gap(40.h),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  TextWidget(
                      text: 'Transaction PIN',
                      fontSize: 17.sp,
                      textColor: AppColors.opacityBlack)
                ]),
                Gap(20.h),
                PinCodeTextField(
                    keyboardType: TextInputType.number,
                    appContext: context,
                    controller: _pinController,
                    length: 4,
                    onCompleted: (value) {},
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                        activeFillColor: AppColors.primaryColor,
                        fieldWidth: w * 0.17,
                        inactiveFillColor: AppColors.opacityGrey,
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(15),
                        fieldHeight: 50,
                        inactiveColor: Colors.grey,
                        activeColor: AppColors.primaryColor,
                        selectedColor: Colors.brown)),
                //
                Gap(250.h),
                Column(children: [
                  TransactionButton(
                      w: w,
                      onTap: () => showDialog(
                          context: context,
                          builder: (ctx) => SimpleDialog(
                              contentPadding: EdgeInsets.zero,
                              surfaceTintColor: Colors.white,
                              title: Column(children: [
                                Image.asset('assets/images/success.png'),
                                Gap(15.h),
                                TextWidget(
                                    text: 'Successful',
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.bold,
                                    textColor: AppColors.greyText),
                                TextWidget(
                                    text:
                                        'Your transaction was completed\nsuccessfully',
                                    textAlign: TextAlign.center,
                                    fontSize: 16.sp,
                                    textColor: AppColors.greyText),
                                Gap(50.h),
                                TransactionButton(
                                    w: w, text: 'Verify', onTap: () => null),
                                Gap(50.h),
                              ]))),
                      text: 'Confirm',
                      textColor: AppColors.opacityBlack,
                      fontWeight: FontWeight.normal,
                      border:
                          Border.all(color: AppColors.opacityGrey, width: 1.5)),
                  Gap(20.h),
                  TransactionButton(
                      w: w,
                      onTap: () => showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (ctx) => SimpleDialog(
                              contentPadding: EdgeInsets.zero,
                              surfaceTintColor: Colors.white,
                              title: Column(children: [
                                Image.asset('assets/images/print.png'),
                                Gap(20.h),
                                Text("Touch the fingerprint sensor",
                                    style: TextStyle(
                                        fontFamily: 'roboto',
                                        color: AppColors.greyText,
                                        fontSize: 14.sp)),
                                Gap(70.h),
                                TextButton(
                                    onPressed: () => Get.back(),
                                    child: Text("Cancel",
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp)))
                              ]))),
                      fontWeight: FontWeight.normal,
                      text: 'Confirm with Biometrics'),
                  Gap(30.h)
                ])
              ])),
        ));
  }
}
