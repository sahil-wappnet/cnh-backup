import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/home_health_tab_container_screen/models/home_health_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeHealthTabContainerScreen.
///
/// This class manages the state of the HomeHealthTabContainerScreen, including the
/// current homeHealthTabContainerModelObj
class HomeHealthTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<HomeHealthTabContainerModel> homeHealthTabContainerModelObj =
      HomeHealthTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 6));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
