import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/splashscreen_screen/models/splashscreen_model.dart';

class SplashscreenController extends GetxController {
  Rx<SplashscreenModel> splashscreenModelObj = SplashscreenModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.onboardingScreenoneScreen,
      );
    });
  }
}
