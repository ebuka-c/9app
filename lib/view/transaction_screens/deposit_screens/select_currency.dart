import 'package:_9app/routes/names.dart';
import 'package:_9app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../values/colors.dart';

class SelectCurrency extends StatefulWidget {
  const SelectCurrency({super.key});

  @override
  State<SelectCurrency> createState() => _SelectCurrencyState();
}

class _SelectCurrencyState extends State<SelectCurrency> {
  final _controller = TextEditingController();

  void updateList(value) {
    ///
    setState(() {
      displayList = currencyList
          .where((currency) =>
              currency.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: TextWidget(text: 'Select Currency', fontSize: 23.sp),
            actions: [
              Badge(
                  backgroundColor: AppColors.primaryColor,
                  child: GestureDetector(
                      onTap: () {}, child: const Icon(Iconsax.notification))),
              SizedBox(width: 25.w)
            ]),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                child: Column(children: [
                  TextField(
                      controller: _controller,
                      onChanged: (value) => updateList(value),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.background,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.sp),
                              borderSide: BorderSide.none),
                          hintText: 'Search Currency',
                          hintStyle: TextStyle(
                              color: AppColors.opacityGrey,
                              fontFamily: 'roboto'),
                          prefixIcon: Icon(Icons.search,
                              color: AppColors.opacityGrey))),
                  Gap(10.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextWidget(
                            text: 'Sort by', fontWeight: FontWeight.bold),
                        Row(children: [
                          TextWidget(
                              text: 'Most Popular',
                              textColor:
                                  AppColors.primaryColor.withOpacity(0.7)),
                          Gap(10.w),
                          Image.asset('assets/icons/mi_filter.png',
                              color: AppColors.primaryColor.withOpacity(0.7),
                              scale: 0.85)
                        ])
                      ]),
                  Gap(10.h),
                  SizedBox(
                      height: h * 0.75.h,
                      child: Expanded(
                          child: ListView.separated(
                              itemBuilder: (context, i) => GestureDetector(
                                    onTap: () =>
                                        Get.toNamed(AppRoutes.depositCurrency),
                                    child: ListTile(
                                      leading: Image.asset(
                                          'assets/icons/btc.png',
                                          scale: 0.5),
                                      title: TextWidget(
                                          text: displayList[i]['title'],
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18.sp),
                                      subtitle: TextWidget(
                                          textColor: AppColors.opacityGrey,
                                          text: displayList[i]['subtitle'],
                                          fontSize: 14.sp),
                                      trailing: const Icon(
                                          Icons.arrow_forward_ios,
                                          color: AppColors.grey,
                                          size: 18),
                                    ),
                                  ),
                              separatorBuilder: (context, i) => Divider(
                                  color: AppColors.opacityGrey, thickness: 0.3),
                              itemCount: displayList.length)))
                ]))));
  }
}

List currencyList = [
  {'title': 'BTC', 'subtitle': 'Bitcoin'},
  {'title': 'USDT', 'subtitle': 'Tether'},
  {'title': 'BNB', 'subtitle': 'Binance'},
  {'title': 'ETH', 'subtitle': 'Ethereum'},
  {'title': 'LTC', 'subtitle': 'Litecoin'},
  {'title': 'BTC', 'subtitle': 'Bitcoin'},
  {'title': 'USDT', 'subtitle': 'Tether'},
  {'title': 'BNB', 'subtitle': 'Binance'},
  {'title': 'ETH', 'subtitle': 'Ethereum'},
  {'title': 'LTC', 'subtitle': 'Litecoin'}
];

List displayList = List.from(currencyList);
