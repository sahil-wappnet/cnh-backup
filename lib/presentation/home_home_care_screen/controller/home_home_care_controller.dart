import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/home_home_care_screen/models/home_home_care_model.dart';import 'package:flutter/material.dart';/// A controller class for the HomeHomeCareScreen.
///
/// This class manages the state of the HomeHomeCareScreen, including the
/// current homeHomeCareModelObj
class HomeHomeCareController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<HomeHomeCareModel> homeHomeCareModelObj = HomeHomeCareModel().obs;

Rx<int> sliderIndex = 0.obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
