import 'package:_9app/view/auth/recovery/forgot_pswd.dart';
import 'package:_9app/view/auth/recovery/new_password.dart';
import 'package:_9app/view/auth/recovery/otp_verification.dart';
import 'package:_9app/view/auth/signup.dart';
import 'package:_9app/view/onboarding/onboarding.dart';
import 'package:_9app/view/settings/kyc/image_upload.dart';
import 'package:_9app/view/settings/kyc/kyc_otp.dart';
import 'package:_9app/view/settings/kyc/verified_screen.dart';
import 'package:_9app/view/settings/profile.dart';
import 'package:_9app/view/splash_screen.dart';
import 'package:_9app/view/transaction_screens/deposit_screens/deposit/deposit_currency.dart';
import 'package:_9app/view/transaction_screens/deposit_screens/transfer.dart';
import 'package:_9app/view/transaction_screens/deposit_screens/withdrawal.dart';
import 'package:_9app/view/transaction_screens/swap_screens/confirm_swap.dart';
import 'package:_9app/view/transaction_screens/swap_screens/enter_pin.dart';
import 'package:_9app/view/transaction_screens/swap_screens/swap.dart';
import 'package:_9app/widgets/nav_bar/homenav.dart';
import 'package:get/get.dart';
import '../view/auth/login.dart';
import '../view/nav_screens.dart/dashboard.dart';
import '../view/settings/kyc/kyc.dart';
import '../view/settings/kyc/kyc_email_verify.dart';
import '../view/transaction_screens/deposit_screens/select_currency.dart';
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
      name: AppRoutes.homeNav,
      page: () => const HomeNav(),
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
        page: () => OTPVerification(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.createNewPSWD,
        page: () => const NewPswd(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.dashboard,
        page: () => const Dashboard(),
        transition: Transition.rightToLeft),
    GetPage(name: AppRoutes.swap, page: () => Swap()),
    GetPage(name: AppRoutes.confirmSwap, page: () => const ConfirmSwap()),
    GetPage(name: AppRoutes.enterPinSwap, page: () => EnterPinSwap()),
    GetPage(name: AppRoutes.selectCurrency, page: () => const SelectCurrency()),
    GetPage(
        name: AppRoutes.depositCurrency, page: () => const DepositCurrency()),
    GetPage(
        name: AppRoutes.transferDeposit, page: () => const TransferDeposit()),
    GetPage(
        name: AppRoutes.withdrawalDeposit,
        page: () => const WithdrawalDeposit()),
    GetPage(name: AppRoutes.profileScreen, page: () => ProfileScreen()),
    GetPage(name: AppRoutes.kyc, page: () => const KYC()),
    GetPage(name: AppRoutes.kycVerify, page: () => KYCVerify()),
    GetPage(name: AppRoutes.kycOtp, page: () => KycOTP()),
    GetPage(name: AppRoutes.kycVerified, page: () => KycVerified()),
    GetPage(name: AppRoutes.imgUpload, page: () => ImgUpload()),
  ];
}
