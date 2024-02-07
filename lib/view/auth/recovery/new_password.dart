import 'package:_9app/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../values/colors.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/formfield_widget.dart';

class NewPswd extends StatefulWidget {
  const NewPswd({super.key});

  @override
  State<NewPswd> createState() => _NewPswdState();
}

class _NewPswdState extends State<NewPswd> {
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  String password = '';

  bool obscureText = true;
  bool obscureTextConfirm = true;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                leading: IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.arrow_back),
                ),
                title: const Text('Create New Password',
                    style: TextStyle(fontFamily: 'roboto'))),
            body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Center(
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 85.sp, horizontal: 20.w),
                        child: Column(children: [
                          Container(
                              height: 130.h,
                              width: 110.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: const Offset(0, 10))
                                  ]),
                              child: Center(
                                  child: Image.asset('assets/images/logo.png',
                                      scale: 1.4))),
                          Gap(80.h),
                          Text('Create your new password',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24.sp,
                                  fontFamily: 'roboto')),
                          Gap(20.h),
                          FormFieldWidget(
                              controllerType: passwordController,
                              prefixIcon: Iconsax.lock,
                              labelText: 'Password'),
                          Gap(10.h),
                          FormFieldWidget(
                              controllerType: confirmPasswordController,
                              prefixIcon: Iconsax.lock,
                              labelText: 'Confirm Password',
                              suffix: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obscureTextConfirm = !obscureTextConfirm;
                                    });
                                  },
                                  child: Icon(
                                      obscureText
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey)),
                              obscureText: obscureTextConfirm),
                          Gap(40.h),
                          GestureDetector(
                            onTap: () => Get.toNamed(AppRoutes.dashboard),
                            child: CustomButton(
                                height: 55.h,
                                width: w,
                                color: AppColors.primaryColor,
                                text: 'Continue',
                                circularRadius: 50),
                          )
                        ]))))));
  }
}