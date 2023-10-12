import '../controller/onboarding_screenone_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingScreenoneScreen.
///
/// This class ensures that the OnboardingScreenoneController is created when the
/// OnboardingScreenoneScreen is first loaded.
class OnboardingScreenoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingScreenoneController());
  }
}
