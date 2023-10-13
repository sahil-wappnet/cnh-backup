
import 'package:get/get.dart';

import '../models/medicine_orders_model.dart';

/// A controller class for the MedicineOrdersScreen.
///
/// This class manages the state of the MedicineOrdersScreen, including the
/// current medicineOrdersModelObj
class MedicineOrdersController extends GetxController {
  Rx<MedicineOrdersModel> medicineOrdersModelObj = MedicineOrdersModel().obs;
}
