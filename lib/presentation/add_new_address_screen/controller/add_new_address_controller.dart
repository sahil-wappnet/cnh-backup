import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/add_new_address_screen/models/add_new_address_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewAddressScreen.
///
/// This class manages the state of the AddNewAddressScreen, including the
/// current addNewAddressModelObj
class AddNewAddressController extends GetxController {TextEditingController housenumberoneController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController streetaddressController = TextEditingController();

TextEditingController pincodeController = TextEditingController();

TextEditingController contactnumberController = TextEditingController();

TextEditingController nameController1 = TextEditingController();

TextEditingController emailController = TextEditingController();

Rx<AddNewAddressModel> addNewAddressModelObj = AddNewAddressModel().obs;

Rx<String> tagaddressas = "".obs;

@override void onClose() { super.onClose(); housenumberoneController.dispose(); nameController.dispose(); streetaddressController.dispose(); pincodeController.dispose(); contactnumberController.dispose(); nameController1.dispose(); emailController.dispose(); } 
 }
