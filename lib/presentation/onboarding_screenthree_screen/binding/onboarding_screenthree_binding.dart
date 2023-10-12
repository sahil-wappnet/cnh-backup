import '../controller/onboarding_screenthree_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingScreenthreeScreen.
///
/// This class ensures that the OnboardingScreenthreeController is created when the
/// OnboardingScreenthreeScreen is first loaded.
class OnboardingScreenthreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingScreenthreeController());
  }
}
