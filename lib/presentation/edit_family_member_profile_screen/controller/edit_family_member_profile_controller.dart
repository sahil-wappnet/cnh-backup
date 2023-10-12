import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/edit_family_member_profile_screen/models/edit_family_member_profile_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditFamilyMemberProfileScreen.
///
/// This class manages the state of the EditFamilyMemberProfileScreen, including the
/// current editFamilyMemberProfileModelObj
class EditFamilyMemberProfileController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController genderController = TextEditingController();

TextEditingController emailController = TextEditingController();

Rx<EditFamilyMemberProfileModel> editFamilyMemberProfileModelObj = EditFamilyMemberProfileModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); fullNameController.dispose(); genderController.dispose(); emailController.dispose(); } 
onSelected(dynamic value) { for (var element in editFamilyMemberProfileModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} editFamilyMemberProfileModelObj.value.dropdownItemList.refresh(); } 
 }
