import 'controller/edit_family_member_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/core/utils/validation_functions.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_bottom_bar.dart';
import 'package:sahil_s_application2/widgets/custom_drop_down.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:sahil_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditFamilyMemberProfileScreen
    extends GetWidget<EditFamilyMemberProfileController> {
  EditFamilyMemberProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 40.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarSubtitle(
                    text: "msg_edit_family_member".tr,
                    margin: EdgeInsets.only(left: 6.h))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_you_can_not_edit".tr,
                              style: CustomTextStyles.bodyMedium14_1),
                          SizedBox(height: 32.v),
                          Text("lbl_full_name".tr,
                              style: theme.textTheme.bodySmall),
                          CustomTextFormField(
                              controller: controller.fullNameController,
                              margin: EdgeInsets.only(top: 9.v, right: 9.h),
                              hintText: "lbl_shreya_shah2".tr,
                              hintStyle: CustomTextStyles.bodyMediumGray50001),
                          SizedBox(height: 14.v),
                          Text("lbl_date_of_birth".tr,
                              style: theme.textTheme.bodySmall),
                          SizedBox(height: 10.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.h, vertical: 11.v),
                              decoration: AppDecoration.outlineBlueGray
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5),
                              child: Text("lbl_01_2_1991".tr,
                                  style: CustomTextStyles.bodyMediumGray50001)),
                          SizedBox(height: 14.v),
                          Text("lbl_gender".tr,
                              style: theme.textTheme.bodySmall),
                          CustomTextFormField(
                              controller: controller.genderController,
                              margin: EdgeInsets.only(top: 9.v, right: 9.h),
                              hintText: "lbl_female".tr,
                              hintStyle: CustomTextStyles.bodyMediumGray50001),
                          SizedBox(height: 14.v),
                          Text("lbl_relation".tr,
                              style: theme.textTheme.bodySmall),
                          CustomDropDown(
                              icon: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      30.h, 9.v, 13.h, 10.v),
                                  margin: EdgeInsets.only(),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.h),
                                      border: Border.all(
                                          color: appTheme.blueGray100,
                                          width: 1.h)),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowdown)),
                              margin: EdgeInsets.only(top: 9.v, right: 9.h),
                              hintText: "lbl_self2".tr,
                              items: controller.editFamilyMemberProfileModelObj
                                  .value.dropdownItemList!.value,
                              onChanged: (value) {
                                controller.onSelected(value);
                              }),
                          SizedBox(height: 14.v),
                          Text("lbl_email".tr,
                              style: theme.textTheme.bodySmall),
                          CustomTextFormField(
                              controller: controller.emailController,
                              margin: EdgeInsets.only(top: 9.v, right: 9.h),
                              hintText: "msg_shreya_gmail_com".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Spacer(),
                          Padding(
                              padding:
                                  EdgeInsets.only(right: 1.h, bottom: 24.v),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: CustomElevatedButton(
                                            text: "lbl_cancel".tr,
                                            margin:
                                                EdgeInsets.only(right: 6.h))),
                                    Expanded(
                                        child: CustomElevatedButton(
                                            text: "lbl_save".tr,
                                            margin: EdgeInsets.only(left: 6.h)))
                                  ]))
                        ]))),
            bottomNavigationBar:
                CustomBottomBar(
                  // onChanged: (BottomBarEnum type) {}
                  )));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
