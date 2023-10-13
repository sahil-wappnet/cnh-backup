import '../controller/medicine_orders_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MedicineOrdersScreen.
///
/// This class ensures that the MedicineOrdersController is created when the
/// MedicineOrdersScreen is first loaded.
class MedicineOrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MedicineOrdersController());
  }
}
