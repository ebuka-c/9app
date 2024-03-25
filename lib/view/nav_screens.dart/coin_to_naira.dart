import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import '../../values/colors.dart';
import '../../widgets/custom_buttons.dart';
import '../../widgets/nav_bar/tab_widgets/converter_textfield.dart';

class CoinToNaira extends StatelessWidget {
  const CoinToNaira({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            actions: [
              Badge(
                  backgroundColor: AppColors.primaryColor,
                  child: GestureDetector(
                      onTap: () {}, child: const Icon(Iconsax.notification))),
              SizedBox(width: 25.w),
              const CircleAvatar(),
              SizedBox(width: 15.w)
            ]),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
                height: h,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 75.h, horizontal: 22.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ConverterTextfield(
                              w: w,
                              h: h,
                              image: 'assets/images/usa.png',
                              currency: 'USD',
                              readOnly: true,
                              material: true),
                          Gap(50.h),
                          ConverterTextfield(
                              w: w,
                              h: h,
                              image: 'assets/images/nga.png',
                              currency: 'NGN',
                              readOnly: false,
                              material: true),
                          Gap(20.h),
                          RichText(
                              textDirection: TextDirection.ltr,
                              text: TextSpan(
                                  text: '1 BTC = ',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: AppColors.opacityBlack,
                                      fontFamily: 'roboto'),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '3.673,342',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.primaryColor,
                                            fontSize: 16.sp)),
                                    TextSpan(
                                        text: ' NGN',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.opacityBlack,
                                            fontSize: 16.sp))
                                  ])),
                          const Spacer(),
                          TransactionButton(
                              w: w, text: 'Continue', onTap: () {}),
                          const Spacer()
                        ])))));
  }
}
