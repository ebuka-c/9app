import 'package:_9app/routes/names.dart';
import 'package:_9app/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../values/colors.dart';
import '../../../widgets/swap/swap_confirm_row.dart';
import '../../../widgets/text_widget.dart';

class ConfirmSwap extends StatelessWidget {
  const ConfirmSwap({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar:
            AppBar(title: TextWidget(text: 'Swap', fontSize: 23.sp), actions: [
          Badge(
              backgroundColor: AppColors.primaryColor,
              child: GestureDetector(
                  onTap: () {}, child: const Icon(Iconsax.notification))),
          SizedBox(width: 25.w)
        ]),
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 20.w),
            child: Column(children: [
              Container(
                  height: 150,
                  width: w,
                  decoration: BoxDecoration(
                      color: AppColors.swapConfirm,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                            text: 'You will receive',
                            fontSize: 16.sp,
                            fontFamily: '',
                            textColor: AppColors.greyText),
                        Gap(3.h),
                        TextWidget(
                            text: '0.0000332 BTC',
                            textColor: AppColors.swapGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.sp),
                        Gap(3.h),
                        TextWidget(
                            text: '#600,000,00',
                            fontFamily: '',
                            textColor: AppColors.greyText,
                            fontSize: 16.sp)
                      ])),
              Gap(40.h),
              SwapConfirmRow(
                  fromTo: 'From',
                  image: 'assets/images/lite.png',
                  coinName: 'Lite',
                  w: w),
              const Gap(20),
              SwapConfirmRow(
                  fromTo: 'To',
                  image: 'assets/icons/btc.png',
                  coinName: 'USDT',
                  w: w),
              const Gap(20),
              SwapConfirmRow(fromTo: 'Price', amounts: '10,4532.4 USDT', w: w),
              const Gap(20),
              SwapConfirmRow(
                  fromTo: 'You will receive',
                  amounts: '0.000000456 \n= 300 USDT',
                  w: w),
              const Spacer(),
              TransactionButton(
                  w: w,
                  text: 'Confirm',
                  onTap: () => Get.toNamed(AppRoutes.enterPinSwap)),
              const Spacer(),
            ])));
  }
}
