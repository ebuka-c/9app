import 'package:_9app/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Settings')),
          Gap(20.h),
          GestureDetector(
            onTap: () => Get.toNamed(AppRoutes.profileScreen),
            child: Text(
              'Click to go to Profile',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
