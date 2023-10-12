import '../controller/home_page_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomePageTabContainerScreen.
///
/// This class ensures that the HomePageTabContainerController is created when the
/// HomePageTabContainerScreen is first loaded.
class HomePageTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageTabContainerController());
  }
}
