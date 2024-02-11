import 'package:_9app/routes/names.dart';
import 'package:_9app/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/onboard_content.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 35.h),
            child: Obx(
              () => Column(children: [
                Expanded(
                  child: PageView(
                    controller: controller.pageController,
                    onPageChanged: (index) {
                      controller.pageIndex.value = index;
                      controller.isLastPage.value = index == 2;
                    },
                    children: [
                      const OnboardContent(
                          description:
                              'Convert your Crypto to Naira\nand withdraw to Bank Account'),
                      OnboardContent(
                          description:
                              'Your Entrance to Smooth\nCryptocurrency Exchange!',
                          body: Stack(children: [
                            Container(height: 420.h),
                            Positioned(
                                top: 130.h,
                                child: Image.asset('assets/images/intro2.png')),
                            Positioned(
                                top: 100.h,
                                left: 20.w,
                                child:
                                    Image.asset('assets/images/eclipse.png')),
                            Positioned(
                                top: 385.h,
                                left: 180.w,
                                child: Image.asset('assets/images/eclipse.png',
                                    scale: 1.15)),
                            Positioned(
                                top: 50.h,
                                left: 300.w,
                                child: Image.asset('assets/images/eclipse.png',
                                    scale: 1.15)),
                          ])),
                      OnboardContent(
                          description:
                              'Experience hassle-free transactions\nwith our intuitive platform designed\nfor your convenience.',
                          body: Stack(children: [
                            Container(height: 420.h),
                            Positioned(
                                top: 130.h,
                                child: Image.asset('assets/images/intro3.png')),
                            Positioned(
                                top: 100.h,
                                left: 20.w,
                                child:
                                    Image.asset('assets/images/eclipse.png')),
                            Positioned(
                                top: 385.h,
                                left: 180.w,
                                child: Image.asset('assets/images/eclipse.png',
                                    scale: 1.15)),
                            Positioned(
                                top: 50.h,
                                left: 300.w,
                                child: Image.asset('assets/images/eclipse.png',
                                    scale: 1.15)),
                          ]))
                    ],
                  ),
                ),
                controller.isLastPage.value
                    ? GestureDetector(
                        onTap: () => Get.offAllNamed(AppRoutes.signup),
                        child: CustomButton(
                            height: 55.h,
                            width: w * 0.85,
                            color: Colors.black,
                            text: 'Get Started',
                            fontWeight: FontWeight.normal,
                            fontSize: 17.sp,
                            circularRadius: 50),
                      )
                    : Row(children: [
                        // DotIndicator(),
                        ...List.generate(
                            3,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: DotIndicator(
                                    isActive:
                                        index == controller.pageIndex.value,
                                  ),
                                )),
                        const Spacer(),
                        GestureDetector(
                            onTap: () => controller.pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Container(
                                    color: AppColors.primaryColor,
                                    height: 50.sp,
                                    width: 50.sp,
                                    child: const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Colors.white,
                                        size: 15))))
                      ])
              ]),
            )));
  }
}

class OnboardingController extends GetxController {
  late PageController pageController;
  RxInt pageIndex = 0.obs;
  RxBool isLastPage = false.obs;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
