import 'package:_9app/widgets/logo_display.dart';
import 'package:_9app/widgets/nav_bar/wallet_widgets.dart/btc_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import '../../values/colors.dart';
import '../../widgets/text_widget.dart';

final bucketGlobal = PageStorageBucket();

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: LogoDisplay(height: 40.sp, width: 40.sp),
            actions: [
              Badge(
                  backgroundColor: AppColors.primaryColor,
                  child: GestureDetector(
                      onTap: () {}, child: const Icon(Iconsax.notification))),
              SizedBox(width: 15.w),
              const CircleAvatar(),
              SizedBox(width: 15.w)
            ]),
        body: PageStorage(
          bucket: bucketGlobal,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(children: [
                  Container(height: 300.h, color: Colors.amber),
                  TabBar(
                      indicatorColor: AppColors.primaryColor,
                      labelColor: AppColors.primaryColor,
                      unselectedLabelColor: Colors.black,
                      labelPadding: EdgeInsets.symmetric(horizontal: 10.w),
                      controller: _tabController,
                      tabs: _tabs),
                  SizedBox(
                      height: 350.h,
                      child: TabBarView(
                          controller: _tabController, children: _tabsBody))
                ])),
          ),
        ));
  }
}

List<Widget> _tabs = [
  Tab(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          height: 15.sp,
          width: 15.sp,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(100))),
      Gap(5.w),
      const TextWidget(text: 'All', fontWeight: FontWeight.w600),
    ],
  )),
  Tab(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          height: 15.sp,
          width: 15.sp,
          decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.6),
              borderRadius: BorderRadius.circular(100))),
      Gap(5.w),
      const TextWidget(text: 'BTC', fontWeight: FontWeight.w600),
    ],
  )),
  Tab(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          height: 15.sp,
          width: 15.sp,
          decoration: BoxDecoration(
              color: AppColors.bluish.withOpacity(0.6),
              borderRadius: BorderRadius.circular(100))),
      Gap(5.w),
      const TextWidget(text: 'ETH', fontWeight: FontWeight.w600),
    ],
  )),
  Tab(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          height: 15.sp,
          width: 15.sp,
          decoration: BoxDecoration(
              color: AppColors.pinkish.withOpacity(0.6),
              borderRadius: BorderRadius.circular(100))),
      Gap(5.w),
      const TextWidget(text: 'LTC', fontWeight: FontWeight.w600),
    ],
  )),
  Tab(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          height: 15.sp,
          width: 15.sp,
          decoration: BoxDecoration(
              color: AppColors.yellowish.withOpacity(0.6),
              borderRadius: BorderRadius.circular(100))),
      Gap(5.w),
      const TextWidget(text: 'XRP', fontWeight: FontWeight.w600),
    ],
  ))
];

List<Widget> _tabsBody = [
  //Coins
  const CircleAvatar(
    key: PageStorageKey('walletOne'),
  ),
  const BtcListview(
    key: PageStorageKey('walletTwo'),
  ),
  const CircleAvatar(
    key: PageStorageKey('walletThree'),
  ),

  //Exchange Rates
  const CircleAvatar(
    key: PageStorageKey('walletFour'),
  ),

  //Activities
  const CircleAvatar(
    key: PageStorageKey('walletFive'),
  ),
];
