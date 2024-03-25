import 'package:_9app/routes/names.dart';
import 'package:_9app/values/colors.dart';
import 'package:_9app/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../controllers/auth_controller.dart';
import '../../widgets/textfields/formfield_widget.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Center(
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 85.sp, horizontal: 20.w),
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
                      Text('Login to your Account',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24.sp,
                              fontFamily: 'roboto')),
                      Gap(20.h),
                      FormFieldWidget(
                          controllerType: controller.emailController,
                          prefixIcon: Icons.email_outlined,
                          keyboardType: TextInputType.emailAddress,
                          labelText: 'Email'),
                      Column(children: [
                        Obx(
                          () => FormFieldWidget(
                              controllerType:
                                  controller.signInPasswordController,
                              prefixIcon: Iconsax.lock,
                              labelText: 'Password',
                              suffix: GestureDetector(
                                  onTap: () {
                                    controller.signInObscuretext.value =
                                        !controller.signInObscuretext.value;
                                  },
                                  child: Icon(
                                      controller.signInObscuretext.value
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey)),
                              obscureText: controller.signInObscuretext.value),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap: () =>
                                      Get.toNamed(AppRoutes.forgotPSWD),
                                  child: Text('Forgot Password?',
                                      style: TextStyle(
                                          fontFamily: 'roboto',
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.primaryColor,
                                          fontSize: 13.5.sp)))
                            ])
                      ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(
                              () => Checkbox(
                                  value: controller.rememberMe.value,
                                  onChanged: (value) {
                                    controller.rememberMe.value = value!;
                                  }),
                            ),
                            Text('Remeber Me',
                                style: TextStyle(
                                    fontFamily: 'roboto', fontSize: 15.sp))
                          ]),
                      Gap(30.h),
                      GestureDetector(
                          onTap: () => showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (ctx) => SimpleDialog(
                                  contentPadding: EdgeInsets.zero,
                                  surfaceTintColor: Colors.white,
                                  title: Column(children: [
                                    Image.asset('assets/images/print.png'),
                                    Gap(20.h),
                                    Text("Touch the fingerprint sensor",
                                        style: TextStyle(
                                            fontFamily: 'roboto',
                                            color: AppColors.greyText,
                                            fontSize: 14.sp)),
                                    Gap(70.h),
                                    TextButton(
                                        onPressed: () => Get.back(),
                                        child: Text("Cancel",
                                            style: TextStyle(
                                                fontFamily: 'roboto',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.sp)))
                                  ]))),
                          child: Text('Login with Biometric',
                              style: TextStyle(
                                  fontFamily: 'roboto',
                                  color: AppColors.primaryColor,
                                  fontSize: 18.sp))),
                      Gap(30.h),
                      GestureDetector(
                          onTap: () => Get.toNamed(AppRoutes.homeNav),
                          child: CustomButton(
                              height: 55.h,
                              width: w * 0.85.w,
                              color: AppColors.primaryColor,
                              text: 'Login',
                              circularRadius: 50)),
                      Gap(15.h),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don\'t have an account?  ',
                                style: TextStyle(
                                    fontFamily: 'roboto', fontSize: 15.sp)),
                            GestureDetector(
                                onTap: () => Get.toNamed(AppRoutes.signup),
                                child: Text('Sign up',
                                    style: TextStyle(
                                        fontFamily: 'roboto',
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.primaryColor,
                                        fontSize: 15.sp)))
                          ])
                    ])))));
  }
}
