import '../controller/add_prescription_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddPrescriptionScreen.
///
/// This class ensures that the AddPrescriptionController is created when the
/// AddPrescriptionScreen is first loaded.
class AddPrescriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPrescriptionController());
  }
}
