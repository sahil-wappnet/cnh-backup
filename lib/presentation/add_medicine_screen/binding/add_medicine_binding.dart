import '../controller/add_medicine_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddMedicineScreen.
///
/// This class ensures that the AddMedicineController is created when the
/// AddMedicineScreen is first loaded.
class AddMedicineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddMedicineController());
  }
}
