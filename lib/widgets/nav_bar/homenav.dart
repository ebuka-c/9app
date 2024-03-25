import 'package:_9app/routes/names.dart';
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

final bucketGlobal = PageStorageBucket();

class HomeNav extends StatelessWidget {
  const HomeNav({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    double h = MediaQuery.of(context).size.height;
    return Obx(() => PageStorage(
          bucket: bucketGlobal,
          child: Scaffold(
              bottomNavigationBar: controller.selectedIndex.value == 0
                  ? SizedBox(
                      height: h * 0.15.h,
                      child: Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TransactionButtons(
                                        onPressed: () => Get.toNamed(
                                            AppRoutes.selectCurrency),
                                        color: AppColors.primaryColor,
                                        text: 'Deposit',
                                        shadowColor: AppColors.primaryColor),
                                    TransactionButtons(
                                        onPressed: () {},
                                        color: AppColors.yellowButton,
                                        text: 'Withdraw',
                                        shadowColor: AppColors.yellowButton),
                                    TransactionButtons(
                                        onPressed: () =>
                                            Get.toNamed(AppRoutes.swap),
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
                                        icon: Icon(Icons.dashboard),
                                        label: 'Home')),
                                Container(
                                    margin: EdgeInsets.only(bottom: 15.h),
                                    child: const NavigationDestination(
                                        icon: Icon(Iconsax.wallet),
                                        label: 'Wallet')),
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
                  : Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: NavigationBar(
                          height: h * 0.055.h,
                          selectedIndex: controller.selectedIndex.value,
                          elevation: 0,
                          onDestinationSelected: (index) =>
                              controller.selectedIndex.value = index,
                          destinations: [
                            Container(
                                margin: EdgeInsets.only(bottom: 15.h),
                                child: const NavigationDestination(
                                    icon: Icon(Icons.dashboard),
                                    label: 'Home')),
                            Container(
                                margin: EdgeInsets.only(bottom: 15.h),
                                child: const NavigationDestination(
                                    icon: Icon(Iconsax.wallet),
                                    label: 'Wallet')),
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
                          ])),
              body: Obx(
                  () => controller.screens[controller.selectedIndex.value])),
        ));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const Dashboard(
      key: PageStorageKey('nav1'),
    ),
    const Wallet(
      key: PageStorageKey('nav2'),
    ),
    const CoinToNaira(
      key: PageStorageKey('nav3'),
    ),
    const Settings(
      key: PageStorageKey('nav4'),
    )
  ];
}
