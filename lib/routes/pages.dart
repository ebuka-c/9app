import 'package:_9app/view/auth/recovery/forgot_pswd.dart';
import 'package:_9app/view/auth/recovery/new_password.dart';
import 'package:_9app/view/auth/recovery/otp_verification.dart';
import 'package:_9app/view/auth/signup.dart';
import 'package:_9app/view/main_screens/dashboard.dart';
import 'package:_9app/view/onboarding/onboarding.dart';
import 'package:_9app/view/splash_screen.dart';
import 'package:get/get.dart';
import '../view/auth/login.dart';
import 'names.dart';

class AppPages {
  static final List<GetPage> routes = [
    GetPage(
        name: AppRoutes.splash,
        page: () => const Splash(),
        transition: Transition.rightToLeft),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
        name: AppRoutes.signup,
        page: () => const SignUpScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.login,
        page: () => const LoginScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.forgotPSWD,
        page: () => const ForgotPSWD(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.otpverify,
        page: () => const OTPVerification(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.createNewPSWD,
        page: () => const NewPswd(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.dashboard,
        page: () => const Dashboard(),
        transition: Transition.rightToLeft),
  ];
}
