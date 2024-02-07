import 'package:_9app/routes/names.dart';
import 'package:_9app/values/colors.dart';
import 'package:_9app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../widgets/formfield_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var userController = TextEditingController();
  var passwordController = TextEditingController();

  String password = '';

  bool rememberMe = false;
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Center(
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 55.sp, horizontal: 20.w),
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
                      Gap(40.h),
                      Text('Create New Account',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24.sp,
                              fontFamily: 'roboto')),
                      Gap(20.h),
                      FormFieldWidget(
                          controllerType: nameController,
                          prefixIcon: Icons.person_2_outlined,
                          keyboardType: TextInputType.name,
                          labelText: 'Full Name'),
                      FormFieldWidget(
                          controllerType: userController,
                          prefixIcon: Iconsax.profile_circle4,
                          keyboardType: TextInputType.name,
                          labelText: 'User Name'),
                      FormFieldWidget(
                          controllerType: emailController,
                          prefixIcon: Icons.email_outlined,
                          keyboardType: TextInputType.emailAddress,
                          labelText: 'Email'),
                      FormFieldWidget(
                          controllerType: passwordController,
                          prefixIcon: Iconsax.lock,
                          labelText: 'Password',
                          suffix: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              child: Icon(
                                  obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey)),
                          obscureText: obscureText),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                                value: rememberMe,
                                onChanged: (value) {
                                  setState(() {
                                    rememberMe = value!;
                                  });
                                }),
                            Text('Remeber Me',
                                style: TextStyle(
                                    fontFamily: 'roboto', fontSize: 15.sp)),
                          ]),
                      Gap(20.h),
                      CustomButton(
                          height: 55.h,
                          width: w,
                          color: AppColors.primaryColor,
                          text: 'Sign Up',
                          circularRadius: 50),
                      Gap(15.h),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account?  ',
                              style: TextStyle(
                                  fontFamily: 'roboto', fontSize: 15.sp),
                            ),
                            GestureDetector(
                                onTap: () => Get.offAllNamed(AppRoutes.login),
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                      fontFamily: 'roboto',
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.primaryColor,
                                      fontSize: 15.sp),
                                ))
                          ])
                    ])))));
  }
}