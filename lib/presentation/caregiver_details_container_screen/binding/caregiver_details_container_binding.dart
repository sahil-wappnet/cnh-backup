import '../controller/caregiver_details_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CaregiverDetailsContainerScreen.
///
/// This class ensures that the CaregiverDetailsContainerController is created when the
/// CaregiverDetailsContainerScreen is first loaded.
class CaregiverDetailsContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CaregiverDetailsContainerController());
  }
}
