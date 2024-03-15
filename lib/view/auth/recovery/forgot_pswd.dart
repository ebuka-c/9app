import 'package:_9app/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../values/colors.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/recoveryVia.dart';

class ForgotPSWD extends StatefulWidget {
  const ForgotPSWD({super.key});

  @override
  State<ForgotPSWD> createState() => _ForgotPSWDState();
}

class _ForgotPSWDState extends State<ForgotPSWD> {
  int isSelected = -1;

  List recoverVia = [
    {
      'imageIcon': 'assets/images/viasms.png',
      'info': '+2349081334499',
      'via': 'via SMS',
    },
    {
      'imageIcon': 'assets/images/viaemail.png',
      'info': 'sky@gmail.com',
      'via': 'via Email',
    },
  ];
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
                      Gap(50.h),
                      Text(
                          'Select which contact details should we use \nto reset your password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 15.5.sp)),
                      SizedBox(
                          height: 300,
                          child: ListView.builder(
                              itemBuilder: (context, index) => GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isSelected = index;
                                      });
                                    },
                                    child: RecoveryVia(
                                        backgroundColor: isSelected == index
                                            ? AppColors.opacityBlack
                                                .withOpacity(0.8)
                                            : null,
                                        textColor: isSelected == index
                                            ? Colors.white
                                            : null,
                                        opacityColor: isSelected == index
                                            ? Colors.white70
                                            : null,
                                        imageIcon: recoverVia[index]
                                            ['imageIcon'],
                                        borderColor: isSelected == index
                                            ? AppColors.primaryColor
                                            : Colors.grey.withOpacity(0.5),
                                        info: recoverVia[index]['info'],
                                        via: recoverVia[index]['via']),
                                  ),
                              itemCount: recoverVia.length)),
                      Gap(70.h),
                      GestureDetector(
                          onTap: () => isSelected != -1
                              ? Get.toNamed(AppRoutes.otpverify)
                              : null,
                          child: CustomButton(
                              height: 55.h,
                              width: w * w,
                              color: isSelected != -1
                                  ? AppColors.primaryColor
                                  : AppColors.primaryColor.withOpacity(0.6),
                              text: 'Continue',
                              circularRadius: 50))
                    ])))));
  }
}
