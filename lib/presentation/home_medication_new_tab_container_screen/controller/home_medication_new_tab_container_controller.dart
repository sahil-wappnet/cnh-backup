import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/home_medication_new_tab_container_screen/models/home_medication_new_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeMedicationNewTabContainerScreen.
///
/// This class manages the state of the HomeMedicationNewTabContainerScreen, including the
/// current homeMedicationNewTabContainerModelObj
class HomeMedicationNewTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<HomeMedicationNewTabContainerModel> homeMedicationNewTabContainerModelObj =
      HomeMedicationNewTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 5));

  late TabController sectionsController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
