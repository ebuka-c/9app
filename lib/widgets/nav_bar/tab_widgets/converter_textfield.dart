import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../text_widget.dart';

class ConverterTextfield extends StatelessWidget {
  const ConverterTextfield(
      {super.key,
      required this.w,
      required this.h,
      this.image,
      this.currency,
      required this.readOnly,
      required this.material,
      this.border,
      this.controllerType,
      this.hintText,
      this.contentPadding,
      this.style,
      this.hintStyle});

  final double w;
  final double h;
  final String? image, currency, hintText;
  final bool readOnly, material;
  final InputBorder? border;
  final TextEditingController? controllerType;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? style, hintStyle;

  @override
  Widget build(BuildContext context) {
    return material
        ? Stack(children: [
            Material(
                elevation: 5,
                child: TextField(
                    readOnly: readOnly,
                    controller: controllerType,
                    onTapOutside: (PointerDownEvent event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    style: const TextStyle(color: Colors.black),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20.sp),
                        border: border ?? InputBorder.none))),
            Positioned(
                left: w * 0.65.w,
                top: h * 0.018.h,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(image ?? ''),
                      Gap(8.w),
                      TextWidget(
                          text: currency ?? '', fontWeight: FontWeight.w500),
                      const Icon(Icons.arrow_drop_down)
                    ]))
          ])
        : TextField(
            textAlign: TextAlign.right,
            readOnly: readOnly,
            controller: controllerType,
            onTapOutside: (PointerDownEvent event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            style: style ?? const TextStyle(color: Colors.black),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: contentPadding ?? EdgeInsets.all(20.sp),
              hintText: hintText ?? 'Enter Amount',
              hintStyle: hintStyle,
              border: InputBorder.none,
            ),
          );
  }
}
