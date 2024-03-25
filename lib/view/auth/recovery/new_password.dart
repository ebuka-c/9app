import 'package:_9app/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../controllers/auth_controller.dart';
import '../../../values/colors.dart';
import '../../../widgets/custom_buttons.dart';
import '../../../widgets/textfields/formfield_widget.dart';

class NewPswd extends GetView<AuthController> {
  const NewPswd({super.key});

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
                          Obx(
                            () => FormFieldWidget(
                                controllerType:
                                    controller.recoveryPswdController,
                                prefixIcon: Iconsax.lock,
                                labelText: 'Password',
                                suffix: GestureDetector(
                                    onTap: () {
                                      controller.recoveryObscure.value =
                                          !controller.recoveryObscure.value;
                                    },
                                    child: Icon(
                                        controller.recoveryObscure.value
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey)),
                                obscureText: controller.recoveryObscure.value),
                          ),
                          Gap(10.h),
                          Obx(
                            () => FormFieldWidget(
                                controllerType: controller.recoveryPswdConfirm,
                                prefixIcon: Iconsax.lock,
                                labelText: 'Confirm Password',
                                suffix: GestureDetector(
                                    onTap: () {
                                      controller.recoveryConfirmObscure.value =
                                          !controller
                                              .recoveryConfirmObscure.value;
                                    },
                                    child: Icon(
                                        controller.recoveryConfirmObscure.value
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey)),
                                obscureText:
                                    controller.recoveryConfirmObscure.value),
                          ),
                          Gap(40.h),
                          GestureDetector(
                              onTap: () => Get.offAllNamed(AppRoutes.login),
                              child: CustomButton(
                                  height: 55.h,
                                  width: w,
                                  color: AppColors.primaryColor,
                                  text: 'Continue',
                                  circularRadius: 50))
                        ]))))));
  }
}
