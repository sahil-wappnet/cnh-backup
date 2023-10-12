import '../controller/android_large_fourteen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeFourteenScreen.
///
/// This class ensures that the AndroidLargeFourteenController is created when the
/// AndroidLargeFourteenScreen is first loaded.
class AndroidLargeFourteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeFourteenController());
  }
}
