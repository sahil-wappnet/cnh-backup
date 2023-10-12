import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/android_large_fourteen_screen/models/android_large_fourteen_model.dart';import 'package:flutter/material.dart';/// A controller class for the AndroidLargeFourteenScreen.
///
/// This class manages the state of the AndroidLargeFourteenScreen, including the
/// current androidLargeFourteenModelObj
class AndroidLargeFourteenController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<AndroidLargeFourteenModel> androidLargeFourteenModelObj = AndroidLargeFourteenModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
