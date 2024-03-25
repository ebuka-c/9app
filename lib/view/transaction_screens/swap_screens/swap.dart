import 'package:_9app/routes/names.dart';
import 'package:_9app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../values/colors.dart';
import '../../../widgets/custom_buttons.dart';
import '../../../widgets/swap/swap_from_to.dart';

class Swap extends StatelessWidget {
  Swap({super.key});

  final fromController = TextEditingController();
  final toController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar:
            AppBar(title: TextWidget(text: 'Swap', fontSize: 23.sp), actions: [
          Badge(
              backgroundColor: AppColors.primaryColor,
              child: GestureDetector(
                  onTap: () {}, child: const Icon(Iconsax.notification))),
          SizedBox(width: 25.w),
        ]),
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 20.w),
            child: Column(children: [
              SwapFromTo(
                  w: w,
                  h: h,
                  controllerType: fromController,
                  fromTo: 'From',
                  hint: 'Enter amount...',
                  tokenSwap: const ['ETH', 'BTC', 'USDT']),
              Gap(20.h),
              SwapFromTo(
                  w: w,
                  h: h,
                  controllerType: toController,
                  fromTo: 'To',
                  readOnly: true,
                  tokenSwap: const ['USDT', 'BTC', 'ETH']),
              Gap(20.h),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(text: 'Price', fontSize: 16),
                    TextWidget(text: '0.00000000435 per USDT', fontSize: 16)
                  ]),
              const Spacer(),
              TransactionButton(
                  w: w,
                  text: 'Swap',
                  onTap: () => Get.toNamed(AppRoutes.confirmSwap)),
              const Spacer()
            ])));
  }
}
