import 'package:_9app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../values/colors.dart';
import 'deposit_tabs/address_tab.dart';

class DepositCurrency extends StatefulWidget {
  const DepositCurrency({super.key});

  @override
  State<DepositCurrency> createState() => _DepositCurrencyState();
}

class _DepositCurrencyState extends State<DepositCurrency>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  // final _addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
          title: TextWidget(text: 'Deposit', fontSize: 23.sp),
          actions: [
            Badge(
                backgroundColor: AppColors.primaryColor,
                child: GestureDetector(
                    onTap: () {}, child: const Icon(Iconsax.notification))),
            SizedBox(width: 25.w)
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 15.h),
          child: Column(children: [
            Row(children: [
              Image.asset('assets/icons/btc.png', scale: 0.5),
              Gap(15.w),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                TextWidget(
                    text: 'BTC', fontWeight: FontWeight.w700, fontSize: 18.sp),
                TextWidget(
                    textColor: AppColors.opacityGrey,
                    text: 'Bitcoin',
                    fontSize: 15.sp)
              ])
            ]),
            TabBar(
                indicatorColor: AppColors.primaryColor,
                labelColor: AppColors.primaryColor,
                unselectedLabelColor: Colors.black,
                controller: _tabController,
                tabs: _tabs),
            SizedBox(
                height: h * 0.75.h,
                child:
                    TabBarView(controller: _tabController, children: _tabsBody))
          ]),
        ),
      ),
    );
  }
}

const List<Widget> _tabs = [
  Tab(child: TextWidget(text: 'My Address')),
  Tab(child: TextWidget(text: 'Deposit')),
];

List<Widget> _tabsBody = [
  const MyAddressTab(),
  //////////////////////////
  Column(
    children: [
      Gap(20.h),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        TextWidget(
            text: 'Transfer Address',
            fontWeight: FontWeight.w600,
            fontSize: 17.sp)
      ]),
      Gap(10.h),
      TextField(
          onTapOutside: (PointerDownEvent event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.background,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.sp),
                //borderSide: BorderSide.none,
              ),
              hintText: 'Paste Address',
              hintStyle:
                  TextStyle(color: AppColors.opacityGrey, fontFamily: 'roboto'),
              suffix: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const TextWidget(
                      text: 'PASTE', textColor: AppColors.primaryColor),
                  Icon(Icons.paste, color: AppColors.opacityGrey),
                ],
              ))),
    ],
  )
];
