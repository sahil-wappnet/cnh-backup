import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/forget_password_screen/models/forget_password_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the ForgetPasswordScreen.
///
/// This class manages the state of the ForgetPasswordScreen, including the
/// current forgetPasswordModelObj
class ForgetPasswordController extends GetxController {TextEditingController phoneNumberController = TextEditingController();

Rx<ForgetPasswordModel> forgetPasswordModelObj = ForgetPasswordModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

@override void onClose() { super.onClose(); phoneNumberController.dispose(); } 
 }
