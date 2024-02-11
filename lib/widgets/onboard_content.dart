import 'package:_9app/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../values/colors.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({super.key, this.body, required this.description});

  final Widget? body;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        GestureDetector(
          onTap: () => Get.offAllNamed(AppRoutes.signup),
          child: Text('\nSkip ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                  fontSize: 16.sp,
                  color: AppColors.primaryColor)),
        )
      ]),
      const Spacer(),
      body ??
          Column(
            children: [
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontFamily: 'roboto', color: Colors.black),
                      children: const <TextSpan>[
                        TextSpan(text: 'Welcome to\n'),
                        TextSpan(
                            text: '9App',
                            style: TextStyle(
                                fontFamily: 'roboto',
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColor)),
                      ])),
              Gap(30.h),
              Image.asset('assets/images/intro1.png'),
            ],
          ),
      const Spacer(),
      Text(
        description,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'roboto',
            color: const Color.fromARGB(255, 88, 88, 88),
            fontSize: 18.sp),
      ),
      const Spacer(),
    ]);
  }
}

//dot indicator

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, this.isActive = false});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        height: isActive ? 12 : 4,
        width: 4,
        decoration: BoxDecoration(
            color: isActive
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(0.4),
            borderRadius: BorderRadius.circular(12)));
  }
}
