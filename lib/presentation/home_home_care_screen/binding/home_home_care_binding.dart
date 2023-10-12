import '../controller/home_home_care_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeHomeCareScreen.
///
/// This class ensures that the HomeHomeCareController is created when the
/// HomeHomeCareScreen is first loaded.
class HomeHomeCareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeHomeCareController());
  }
}
