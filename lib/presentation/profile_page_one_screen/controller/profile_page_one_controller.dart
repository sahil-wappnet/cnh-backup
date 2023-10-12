import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/profile_page_one_screen/models/profile_page_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the ProfilePageOneScreen.
///
/// This class manages the state of the ProfilePageOneScreen, including the
/// current profilePageOneModelObj
class ProfilePageOneController extends GetxController {TextEditingController heightvalueoneController = TextEditingController();

TextEditingController weightController = TextEditingController();

TextEditingController spo2valueoneController = TextEditingController();

Rx<ProfilePageOneModel> profilePageOneModelObj = ProfilePageOneModel().obs;

@override void onClose() { super.onClose(); heightvalueoneController.dispose(); weightController.dispose(); spo2valueoneController.dispose(); } 
 }
