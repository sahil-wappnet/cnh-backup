import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/home_medication_new_page/models/home_medication_new_model.dart';

/// A controller class for the HomeMedicationNewPage.
///
/// This class manages the state of the HomeMedicationNewPage, including the
/// current homeMedicationNewModelObj
class HomeMedicationNewController extends GetxController with GetSingleTickerProviderStateMixin{
  HomeMedicationNewController(this.homeMedicationNewModelObj);
late TabController tabviewControllerMediaction =
      Get.put(TabController(vsync: this, length: 2));
  Rx<HomeMedicationNewModel> homeMedicationNewModelObj;
}
