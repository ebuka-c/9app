import 'package:_9app/controllers/auth_controller.dart';
import 'package:_9app/view/onboarding/onboarding.dart';
import 'package:get/get.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(OnboardingController());
    Get.put(AuthController(), permanent: true);
    // Get.put(DashboardController());
    // TODO: implement dependencies
  }
}
