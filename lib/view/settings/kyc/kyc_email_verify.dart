import 'package:_9app/routes/names.dart';
import 'package:_9app/values/colors.dart';
import 'package:_9app/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../widgets/text_widget.dart';
import '../../../widgets/textfields/profile_formfield.dart';

class KYCVerify extends StatelessWidget {
  KYCVerify({super.key});

  final verifyEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(title: TextWidget(text: 'KYC', fontSize: 23.sp)),
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 18.w),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                TextWidget(
                    text: ' Email Verification',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500)
              ]),
              Gap(20.h),
              ProfileFormField(
                  controller: verifyEmail,
                  hintText: 'Enter your email address',
                  prefixIcon:
                      const Icon(Icons.email_outlined, color: AppColors.grey),
                  keyboardType: TextInputType.emailAddress),
              const Spacer(),
              TransactionButton(
                  w: w,
                  text: 'Continue',
                  onTap: () => Get.toNamed(AppRoutes.kycOtp))
            ])));
  }
}
