import '../controller/doctors_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DoctorsDetailsScreen.
///
/// This class ensures that the DoctorsDetailsController is created when the
/// DoctorsDetailsScreen is first loaded.
class DoctorsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorsDetailsController());
  }
}
