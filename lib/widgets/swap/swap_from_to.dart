import 'dart:ui';
import 'package:_9app/widgets/nav_bar/tab_widgets/converter_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../values/colors.dart';
import '../dropdown/dropdown_widget.dart';
import '../text_widget.dart';

class SwapFromTo extends StatelessWidget {
  const SwapFromTo({
    super.key,
    this.w,
    this.h,
    required this.fromTo,
    required this.tokenSwap,
    this.hint,
    this.readOnly,
    required this.controllerType,
  });

  final double? w, h;
  final String fromTo;
  final String? hint;
  final List tokenSwap;
  final bool? readOnly;
  final TextEditingController controllerType;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          color: Colors.white,
          height: 130.h,
          width: w,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            SizedBox(
                height: 40,
                child: DropdownWidget(
                    width: w! * 0.265.w,
                    items: tokenSwap,
                    hintText: tokenSwap[0])),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                      width: 110,
                      height: 50.h,
                      child: ConverterTextfield(
                          controllerType: controllerType,
                          style: TextStyle(
                              fontSize: 25.sp,
                              color: AppColors.swapGrey,
                              fontWeight: FontWeight.w700),
                          w: w ?? 0,
                          h: h ?? 0,
                          contentPadding:
                              const EdgeInsets.only(top: 3, left: 15),
                          readOnly: readOnly ?? false,
                          hintText: hint ?? '',
                          hintStyle: TextStyle(
                              fontSize: 13.sp,
                              color: AppColors.grey,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'roboto'),
                          material: false)),
                  TextWidget(
                      text: 'Bal: 4.8729',
                      fontSize: 16.sp,
                      fontFamily: '',
                      textColor: AppColors.swapGrey,
                      fontWeight: FontWeight.w500)
                ])
          ])),
      Positioned(left: 18.w, top: 15, child: TextWidget(text: fromTo))
    ]);
  }
}
