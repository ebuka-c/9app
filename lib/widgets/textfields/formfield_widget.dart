import 'package:_9app/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget(
      {super.key,
      required this.controllerType,
      this.obscureText,
      this.suffix,
      this.keyboardType,
      this.labelText,
      required this.prefixIcon,
      this.hintText,
      this.hintStyle,
      this.iconColor});

  final TextEditingController controllerType;
  final bool? obscureText;
  final String? labelText, hintText;
  final TextStyle? hintStyle;
  final Widget? suffix;
  final IconData prefixIcon;
  final TextInputType? keyboardType;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: TextFormField(
        controller: controllerType,
        onTapOutside: (PointerDownEvent event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        style: const TextStyle(color: Colors.black),
        keyboardType: keyboardType,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            hintStyle: hintStyle,
            floatingLabelStyle: TextStyle(color: Colors.black, fontSize: 18.sp),
            prefixIcon: Icon(prefixIcon,
                color: iconColor ?? Colors.black.withOpacity(0.6)),
            filled: true,
            fillColor: AppColors.fillColor,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(w * 0.05),
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            ),
            labelStyle: const TextStyle(color: AppColors.greyText),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w * 0.02)),
            suffix: suffix),
        obscureText: obscureText ?? false,
      ),
    );
  }
}
