import 'controller/profile_page_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_bottom_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:sahil_s_application2/widgets/custom_text_form_field.dart';

class ProfilePageOneScreen extends GetWidget<ProfilePageOneController> {
  const ProfilePageOneScreen({Key? key}) : super(key: key);

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
                    text: "lbl_my_account".tr,
                    margin: EdgeInsets.only(left: 6.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgFluentpeopleq,
                      margin:
                          EdgeInsets.only(left: 19.h, top: 18.v, right: 18.h)),
                  AppbarImage1(
                      svgPath: ImageConstant.imgSearch,
                      margin:
                          EdgeInsets.only(left: 24.h, top: 18.v, right: 37.h))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 20.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 9.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(right: 5.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.h, vertical: 14.v),
                                        decoration: AppDecoration
                                            .outlineBlueGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .placeholderImage,
                                                  height: 60.adaptSize,
                                                  width: 60.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      30.h)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10.h,
                                                      top: 12.v,
                                                      bottom: 9.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "lbl_shreya_shah"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodyLargeBluegray900),
                                                                  TextSpan(
                                                                      text: "lbl_self"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodyMediumBluegray900)
                                                                ]),
                                                            textAlign:
                                                                TextAlign.left),
                                                        SizedBox(height: 3.v),
                                                        Text(
                                                            "msg_phone_number_7465389754"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)
                                                      ]))
                                            ])),
                                    SizedBox(height: 26.v),
                                    Text("msg_self_vital_entry".tr,
                                        style: theme.textTheme.bodyLarge),
                                    SizedBox(height: 21.v),
                                    Text("lbl_height".tr,
                                        style: theme.textTheme.bodySmall),
                                    CustomTextFormField(
                                        controller:
                                            controller.heightvalueoneController,
                                        margin: EdgeInsets.only(
                                            top: 8.v, right: 10.h),
                                        hintText: "lbl_5_ft_2_inch".tr),
                                    SizedBox(height: 22.v),
                                    Text("lbl_weight".tr,
                                        style: theme.textTheme.bodySmall),
                                    CustomTextFormField(
                                        controller: controller.weightController,
                                        margin: EdgeInsets.only(
                                            top: 8.v, right: 10.h),
                                        hintText: "lbl_50_kg".tr),
                                    SizedBox(height: 18.v),
                                    Text("lbl_spo2".tr,
                                        style: theme.textTheme.bodySmall),
                                    CustomTextFormField(
                                        controller:
                                            controller.spo2valueoneController,
                                        margin: EdgeInsets.only(
                                            top: 8.v, right: 10.h),
                                        hintText: "lbl_99".tr,
                                        textInputAction: TextInputAction.done),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 23.v, right: 5.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_profiles_1".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge),
                                              Text("lbl_manage_add".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumPrimary)
                                            ])),
                                    SizedBox(height: 16.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.placeholderImage,
                                        height: 34.adaptSize,
                                        width: 34.adaptSize,
                                        radius: BorderRadius.circular(17.h)),
                                    SizedBox(height: 8.v),
                                    Text("lbl_shreya".tr,
                                        style: theme.textTheme.bodySmall),
                                    SizedBox(height: 21.v),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgTablermedicinesyrup,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 6.v, bottom: 8.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 11.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "lbl_medicine_orders"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .bodyLarge),
                                                    SizedBox(height: 3.v),
                                                    Text(
                                                        "msg_order_history_and"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodyMedium14_1)
                                                  ])),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 8.v, bottom: 10.v))
                                        ]),
                                    Padding(
                                        padding: EdgeInsets.only(top: 12.v),
                                        child: Divider(endIndent: 6.h)),
                                    SizedBox(height: 13.v),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLastethoscope,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 6.v, bottom: 8.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 11.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "msg_lab_tests_and_doctor"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .bodyLarge),
                                                    SizedBox(height: 3.v),
                                                    Text(
                                                        "msg_order_history_and"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodyMedium14_1)
                                                  ])),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 46.h,
                                                  top: 6.v,
                                                  bottom: 8.v))
                                        ]),
                                    Padding(
                                        padding: EdgeInsets.only(top: 13.v),
                                        child: Divider(endIndent: 6.h)),
                                    SizedBox(height: 13.v),
                                    Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCarbondocumentadd,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 7.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 11.h),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "msg_all_health_records".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge),
                                                SizedBox(height: 3.v),
                                                Text(
                                                    "msg_reports_prescription_bills"
                                                        .tr,
                                                    style: CustomTextStyles
                                                        .bodyMedium14_1)
                                              ])),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 8.v, bottom: 10.v))
                                    ]),
                                    SizedBox(height: 21.v),
                                    Text("lbl_more".tr,
                                        style: theme.textTheme.bodyLarge),
                                    SizedBox(height: 16.v),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgTablermedicinesyrup,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 4.v, bottom: 8.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 11.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_help".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge),
                                                    SizedBox(height: 1.v),
                                                    Text(
                                                        "msg_faqs_get_help_or"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodyMedium14_1)
                                                  ])),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 6.v, bottom: 10.v))
                                        ]),
                                    Padding(
                                        padding: EdgeInsets.only(top: 13.v),
                                        child: Divider(endIndent: 6.h)),
                                    SizedBox(height: 13.v),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLastethoscope,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 6.v, bottom: 8.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 11.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_address_book".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge),
                                                    SizedBox(height: 3.v),
                                                    Text(
                                                        "msg_edit_add_and_manage"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodyMedium14_1)
                                                  ])),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 8.v, bottom: 10.v))
                                        ]),
                                    CustomElevatedButton(
                                        text: "lbl_logout".tr,
                                        margin: EdgeInsets.only(
                                            top: 36.v, right: 10.h))
                                  ]))))
                ])),
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
