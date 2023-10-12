import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/add_medicine_screen/models/add_medicine_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddMedicineScreen.
///
/// This class manages the state of the AddMedicineScreen, including the
/// current addMedicineModelObj
class AddMedicineController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<AddMedicineModel> addMedicineModelObj = AddMedicineModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
