import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/add_self_vital_detail_page_screen/models/add_self_vital_detail_page_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddSelfVitalDetailPageScreen.
///
/// This class manages the state of the AddSelfVitalDetailPageScreen, including the
/// current addSelfVitalDetailPageModelObj
class AddSelfVitalDetailPageController extends GetxController {TextEditingController heightinftoneController = TextEditingController();

TextEditingController weightinkgoneController = TextEditingController();

TextEditingController spo2valueoneController = TextEditingController();

Rx<AddSelfVitalDetailPageModel> addSelfVitalDetailPageModelObj = AddSelfVitalDetailPageModel().obs;

@override void onClose() { super.onClose(); heightinftoneController.dispose(); weightinkgoneController.dispose(); spo2valueoneController.dispose(); } 
 }
