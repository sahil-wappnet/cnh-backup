import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/add_new_family_member_screen/models/add_new_family_member_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewFamilyMemberScreen.
///
/// This class manages the state of the AddNewFamilyMemberScreen, including the
/// current addNewFamilyMemberModelObj
class AddNewFamilyMemberController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController dateOfBirthController = TextEditingController();

TextEditingController emailController = TextEditingController();

Rx<AddNewFamilyMemberModel> addNewFamilyMemberModelObj = AddNewFamilyMemberModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); fullNameController.dispose(); dateOfBirthController.dispose(); emailController.dispose(); } 
onSelected(dynamic value) { for (var element in addNewFamilyMemberModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addNewFamilyMemberModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in addNewFamilyMemberModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addNewFamilyMemberModelObj.value.dropdownItemList1.refresh(); } 
 }
