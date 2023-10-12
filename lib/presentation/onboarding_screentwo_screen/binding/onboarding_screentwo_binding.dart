import '../controller/onboarding_screentwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingScreentwoScreen.
///
/// This class ensures that the OnboardingScreentwoController is created when the
/// OnboardingScreentwoScreen is first loaded.
class OnboardingScreentwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingScreentwoController());
  }
}
