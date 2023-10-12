import '../controller/home_health_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeHealthTabContainerScreen.
///
/// This class ensures that the HomeHealthTabContainerController is created when the
/// HomeHealthTabContainerScreen is first loaded.
class HomeHealthTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeHealthTabContainerController());
  }
}
