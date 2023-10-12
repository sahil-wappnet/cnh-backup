import '../controller/home_medication_new_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeMedicationNewTabContainerScreen.
///
/// This class ensures that the HomeMedicationNewTabContainerController is created when the
/// HomeMedicationNewTabContainerScreen is first loaded.
class HomeMedicationNewTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeMedicationNewTabContainerController());
  }
}
