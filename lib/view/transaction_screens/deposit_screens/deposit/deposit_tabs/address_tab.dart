import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../values/colors.dart';
import '../../../../../widgets/dropdown/search_dropdown.dart';
import '../../../../../widgets/qr_buttons.dart';
import '../../../../../widgets/text_widget.dart';

class MyAddressTab extends StatelessWidget {
  const MyAddressTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Gap(20.h),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        TextWidget(
            text: 'Select Network',
            fontWeight: FontWeight.w600,
            fontSize: 17.sp)
      ]),
      Gap(10.h),
      Container(
          height: 65.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.grey)),
          child: const SearchDropDown()),
      Gap(20.h),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        TextWidget(
            text: 'Deposit Address',
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
              suffix: Icon(Icons.copy, color: AppColors.opacityGrey))),
      Gap(50.h),
      Image.asset('assets/images/qrcode.png'),
      Gap(30.h),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        QrButtons(
            onTap: () {},
            buttonColor: AppColors.primaryColor.withOpacity(0.3),
            text: 'Share',
            textColor: AppColors.primaryColor),
        QrButtons(
            onTap: () {},
            buttonColor: AppColors.primaryColor,
            text: 'Save QR Code',
            textColor: Colors.white)
      ])
    ]);
  }
}
