import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/sign_up_screen/models/sign_up_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

@override void onClose() { super.onClose(); nameController.dispose(); phoneNumberController.dispose(); passwordController.dispose(); } 
 }
