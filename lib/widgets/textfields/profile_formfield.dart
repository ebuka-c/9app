import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileFormField extends StatelessWidget {
  const ProfileFormField(
      {super.key,
      required this.controller,
      this.hintText,
      this.keyboardType,
      this.prefixIcon});

  final TextEditingController controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          onTapOutside: (PointerDownEvent event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20.sp),
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 14.sp),
              prefixIcon: prefixIcon,
              border: InputBorder.none)),
    );
  }
}
