import 'dart:math';

import 'package:_9app/widgets/dashboard_card.dart';
import 'package:_9app/widgets/logo_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../values/colors.dart';
import '../../widgets/nav_bar/tab_widgets/activities_listtile.dart';
import '../../widgets/nav_bar/tab_widgets/coins_tab.dart';
import '../../widgets/nav_bar/tab_widgets/table_widget.dart';
import '../../widgets/text_widget.dart';

final bucketGlobal = PageStorageBucket();

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  final List dashboardCard = [
    {},
  ];

  RxBool isVisible = true.obs;

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(left: 22.w),
                child: PageStorage(
                  bucket: bucketGlobal,
                  child: Obx(() => Column(children: [
                        Row(children: [
                          TextWidget(
                              text: 'Balance',
                              textColor: Colors.black.withOpacity(0.8)),
                          Gap(30.w),
                          GestureDetector(
                              onTap: () => isVisible.value = !isVisible.value,
                              child: Icon(
                                  isVisible.value
                                      ? Iconsax.eye
                                      : Iconsax.eye_slash,
                                  color: Colors.grey,
                                  size: 25.sp))
                        ]),
                        Gap(5.h),
                        isVisible.value
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                    RichText(
                                        textAlign: TextAlign.start,
                                        text: TextSpan(
                                            style: TextStyle(
                                                fontSize: 25.sp,
                                                color: Colors.black),
                                            children: const <TextSpan>[
                                              TextSpan(
                                                  text: 'USD 13220.40',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              TextSpan(
                                                  text: '  + 7.65%',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 18,
                                                      color: AppColors
                                                          .primaryColor))
                                            ]))
                                  ])
                            : Gap(10.h),
                        Gap(10.h),
                        SizedBox(
                            height: 180.h,
                            child: Expanded(
                                child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, i) {
                                      return DashboardCard(
                                          cardColor: Colors.primaries[Random()
                                              .nextInt(
                                                  Colors.primaries.length)]);
                                    },
                                    separatorBuilder: (c, i) => Gap(5.w),
                                    itemCount: 5))),
                        Gap(10.h),
                        const Divider(),
                        TabBar(
                            indicatorColor: AppColors.primaryColor,
                            labelColor: AppColors.primaryColor,
                            unselectedLabelColor: Colors.black,
                            labelPadding:
                                EdgeInsets.symmetric(horizontal: 10.w),
                            controller: _tabController,
                            tabs: _tabs),
                        SizedBox(
                            height: 350.h,
                            child: TabBarView(
                                controller: _tabController,
                                children: _tabsBody))
                      ])),
                ))));
  }
}

const List<Widget> _tabs = [
  Tab(child: TextWidget(text: 'Coins')),
  Tab(child: TextWidget(text: 'Exchange Rates')),
  Tab(child: TextWidget(text: 'Activities'))
];

List<Widget> _tabsBody = [
  //Coins
  ListView.builder(
      key: const PageStorageKey('tabOne'),
      itemBuilder: (context, i) {
        return const CoinsTab(
            name: 'Bitcoin\n',
            abbr: 'BTC',
            rate: '99,284.01',
            percentage: '+66.3%');
      },
      itemCount: 8),

  //Exchange Rates
  const TableWidget(
    key: PageStorageKey('tabTwo'),
  ),

  //Activities
  const ActivitiesListTile(
    key: PageStorageKey('tabThree'),
  ),
];
