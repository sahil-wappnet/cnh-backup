import '../controller/medicine_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MedicineDetailsScreen.
///
/// This class ensures that the MedicineDetailsController is created when the
/// MedicineDetailsScreen is first loaded.
class MedicineDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MedicineDetailsController());
  }
}
