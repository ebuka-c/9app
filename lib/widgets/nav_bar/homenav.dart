import 'package:_9app/values/colors.dart';
import 'package:_9app/view/nav_screens.dart/coin_to_naira.dart';
import 'package:_9app/view/nav_screens.dart/dashboard.dart';
import 'package:_9app/view/nav_screens.dart/wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../view/nav_screens.dart/settings.dart';
import '../dashboard_card.dart';

class HomeNav extends StatelessWidget {
  const HomeNav({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Obx(() => Scaffold(
        bottomNavigationBar: controller.selectedIndex.value == 0
            ? SizedBox(
                height: 125.h,
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TransactionButtons(
                                  onPressed: () {},
                                  color: AppColors.primaryColor,
                                  text: 'Deposit',
                                  shadowColor: AppColors.primaryColor),
                              TransactionButtons(
                                  onPressed: () {},
                                  color: AppColors.yellowButton,
                                  text: 'Withdraw',
                                  shadowColor: AppColors.yellowButton),
                              TransactionButtons(
                                  onPressed: () {},
                                  color: AppColors.maroon,
                                  text: 'Swap',
                                  shadowColor: AppColors.maroon)
                            ])),
                    NavigationBar(
                        height: 45.h,
                        selectedIndex: controller.selectedIndex.value,
                        elevation: 0,
                        onDestinationSelected: (index) =>
                            controller.selectedIndex.value = index,
                        destinations: [
                          Container(
                              margin: EdgeInsets.only(bottom: 15.h),
                              child: const NavigationDestination(
                                  icon: Icon(Icons.dashboard), label: 'Home')),
                          Container(
                              margin: EdgeInsets.only(bottom: 15.h),
                              child: const NavigationDestination(
                                  icon: Icon(Iconsax.wallet), label: 'Wallet')),
                          Container(
                              margin: EdgeInsets.only(bottom: 15.h),
                              child: const NavigationDestination(
                                  icon: Icon(Iconsax.trade),
                                  label: 'Coin to Naira')),
                          Container(
                              margin: EdgeInsets.only(bottom: 15.h),
                              child: const NavigationDestination(
                                  icon: Icon(Iconsax.setting),
                                  label: 'Settings'))
                        ]),
                  ],
                ),
              )
            : NavigationBar(
                height: 55.h,
                selectedIndex: controller.selectedIndex.value,
                elevation: 0,
                onDestinationSelected: (index) =>
                    controller.selectedIndex.value = index,
                destinations: [
                    Container(
                        margin: EdgeInsets.only(bottom: 15.h),
                        child: const NavigationDestination(
                            icon: Icon(Icons.dashboard), label: 'Home')),
                    Container(
                        margin: EdgeInsets.only(bottom: 15.h),
                        child: const NavigationDestination(
                            icon: Icon(Iconsax.wallet), label: 'Wallet')),
                    Container(
                        margin: EdgeInsets.only(bottom: 15.h),
                        child: const NavigationDestination(
                            icon: Icon(Iconsax.trade), label: 'Coin to Naira')),
                    Container(
                        margin: EdgeInsets.only(bottom: 15.h),
                        child: const NavigationDestination(
                            icon: Icon(Iconsax.setting), label: 'Settings'))
                  ]),
        body: Obx(() => controller.screens[controller.selectedIndex.value])));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const Dashboard(),
    const Wallet(),
    const CoinToNaira(),
    const Settings()
  ];
}
