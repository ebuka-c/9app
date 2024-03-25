import 'package:_9app/routes/names.dart';
import 'package:_9app/values/colors.dart';
import 'package:_9app/widgets/custom_buttons.dart';
import 'package:_9app/widgets/dropdown/dropdown_widget.dart';
import 'package:_9app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../widgets/textfields/profile_formfield.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final fName = TextEditingController();
  final lName = TextEditingController();
  final email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
            title: TextWidget(text: 'Profile', fontSize: 23.sp),
            actions: [
              TextWidget(
                  text: 'Logout',
                  fontSize: 16.sp,
                  textColor: AppColors.primaryColor),
              Gap(25.w)
            ]),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                child: Center(
                    child: Column(children: [
                  Stack(children: [
                    const SizedBox(height: 120, width: 120),
                    Positioned(
                        top: 5.sp,
                        left: 8.sp,
                        child: CircleAvatar(radius: 55.sp)),
                    Positioned(
                      top: 85.sp,
                      left: 75.sp,
                      child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(150),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: const Offset(0, 5))
                              ]),
                          child: Center(
                              child: Icon(Icons.camera_alt_outlined,
                                  color: AppColors.primaryColor
                                      .withOpacity(0.5)))),
                    )
                  ]),

                  //first name
                  Column(children: [
                    Gap(15.h),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      TextWidget(
                          text: 'First Name',
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp)
                    ]),
                    Gap(5.h),
                    ProfileFormField(
                        controller: fName, hintText: 'Your First Name...')
                  ]),
                  //last name
                  Column(children: [
                    Gap(10.h),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      TextWidget(
                          text: 'Last Name',
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp)
                    ]),
                    Gap(5.h),
                    ProfileFormField(
                        controller: lName, hintText: 'Your Last Name...')
                  ]),
                  //email
                  Column(children: [
                    Gap(10.h),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      TextWidget(
                          text: 'Email',
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp)
                    ]),
                    Gap(5.h),
                    ProfileFormField(
                        controller: email,
                        hintText: 'Your Email...',
                        keyboardType: TextInputType.emailAddress)
                  ]),
                  //number
                  Column(children: [
                    Gap(10.h),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      TextWidget(
                          text: 'Phone Number',
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp)
                    ]),
                    Gap(5.h),
                    SizedBox(
                        height: 60.sp,
                        width: w,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Material(
                                  elevation: 3,
                                  child: Container(
                                      width: w * 0.255.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.sp)),
                                      child: DropdownWidget(
                                          hintText: _countries[0],
                                          items: _countries,
                                          topLeft: 0,
                                          bottomLeft: 0,
                                          onChanged: (value) {
                                            value = value!;
                                          }))),
                              Gap(5.w),
                              SizedBox(
                                  width: w * 0.68.w,
                                  child: ProfileFormField(
                                      controller: email,
                                      hintText: 'Your phone number...',
                                      keyboardType: TextInputType.phone))
                            ])),
                    Gap(30.h),
                    GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.kyc),
                      child: Container(
                          height: 50.h,
                          width: w,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.85)),
                          child: Center(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                const TextWidget(
                                    text: 'Click to verify KYC',
                                    textColor: Colors.white),
                                Image.asset('assets/icons/security.png',
                                    scale: 0.9)
                              ]))),
                    ),
                    Gap(30.h),
                    TransactionButton(
                        w: w, onTap: () {}, text: 'Update', boxShadow: const [])
                  ])
                ])))));
  }
}

List _countries = ['NGA', 'GHA', 'SA', 'UGA'];
