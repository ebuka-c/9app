import 'package:_9app/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/recoveryVia.dart';

class ForgotPSWD extends StatelessWidget {
  const ForgotPSWD({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back)),
            title: const Text('Forgot Password',
                style: TextStyle(fontFamily: 'roboto'))),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Center(
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 40.sp, horizontal: 20.w),
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
                      Gap(30.h),
                      Text(
                          'Select which contact details should we use to reset your password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 15.5.sp)),
                      Gap(15.h),
                      GestureDetector(
                        child: const RecoveryVia(
                            imageIcon: 'assets/images/viasms.png',
                            info: '+2349081334499',
                            via: 'via SMS'),
                      ),
                      GestureDetector(
                        child: const RecoveryVia(
                            imageIcon: 'assets/images/viaemail.png',
                            info: 'chinaza@gmail.com',
                            via: 'via Email'),
                      ),
                      Gap(75.h),
                      GestureDetector(
                        onTap: () => Get.offAllNamed(AppRoutes.otpverify),
                        child: CustomButton(
                            height: 55.h,
                            width: w * w,
                            color: AppColors.primaryColor,
                            text: 'Continue',
                            circularRadius: 50),
                      )
                    ])))));
  }
}
