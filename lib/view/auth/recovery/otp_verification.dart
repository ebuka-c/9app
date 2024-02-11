import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../routes/names.dart';
import '../../../values/colors.dart';
import '../../../widgets/custom_button.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({super.key});
  @override
  Widget build(BuildContext context) {
    String countdown = '26';
    String phoneNumber = '+2349081334499';

    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            leading: GestureDetector(
                onTap: () => Get.back(), child: const Icon(Icons.arrow_back)),
            title: const Text('OTP Verification',
                style: TextStyle(fontFamily: 'roboto'))),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Center(
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 70.sp, horizontal: 25.w),
                    child: Column(children: [
                      Container(
                          height: 130.h,
                          width: 110.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: const Offset(0, 10))
                              ]),
                          child: Center(
                              child: Image.asset('assets/images/logo.png',
                                  scale: 1.4))),
                      Gap(130.h),
                      Text('Code has been sent to $phoneNumber',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.5.sp)),
                      Gap(30.h),
                      PinCodeTextField(
                          keyboardType: TextInputType.number,
                          appContext: context,
                          length: 4,
                          onCompleted: (value) {},
                          blinkWhenObscuring: true,
                          animationType: AnimationType.fade,
                          pinTheme: PinTheme(
                              activeFillColor: AppColors.primaryColor,
                              fieldWidth: w * 0.17,
                              selectedFillColor: AppColors.fillColor,
                              inactiveFillColor: Colors.grey,
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(15),
                              fieldHeight: 50,
                              inactiveColor: Colors.grey,
                              activeColor: AppColors.primaryColor,
                              selectedColor: Colors.brown)),
                      Gap(50.h),
                      Text('Resend Code in $countdown s',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 16.5.sp)),
                      Gap(50.h),
                      GestureDetector(
                          onTap: () => Get.toNamed(AppRoutes.createNewPSWD),
                          child: CustomButton(
                              height: 55.h,
                              width: w * w,
                              color: AppColors.primaryColor,
                              text: 'Verify',
                              circularRadius: 50))
                    ])))));
  }
}
