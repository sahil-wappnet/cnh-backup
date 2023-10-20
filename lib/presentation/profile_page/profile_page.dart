import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';

import '../../widgets/app_bar/appbar_image_1.dart';
import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SizedBox(
        width: mediaQueryData.size.width,
        child: SafeArea(
          child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 20.v),
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, right: 9.h, bottom: 5.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppbarTitle(
                              text: "lbl_my_account".tr,
                            ),
                            Row(
                              children: [
                                AppbarImage1(
                                  svgPath: ImageConstant.imgFluentpeopleq,
                                ),
                                SizedBox(
                                  width: 15.v,
                                ),
                                AppbarImage1(
                                  svgPath: ImageConstant.imgSearchPrimary20x20,
                                  onTap: () {
                                    Get.toNamed(
                                        AppRoutes.addSelfVitalDetailPageScreen);
                                  },
                                ),
                                SizedBox(
                                  width: 10.v,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.v,
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 5.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.h, vertical: 14.v),
                            decoration: AppDecoration.outlineBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child:
                                Row(mainAxisSize: MainAxisSize.max, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.placeholderImage,
                                  height: 60.adaptSize,
                                  width: 60.adaptSize,
                                  radius: BorderRadius.circular(30.h)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.h, top: 12.v, bottom: 9.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_shreya_shah".tr,
                                                  style: CustomTextStyles
                                                      .bodyLargeBluegray900),
                                              TextSpan(
                                                  text: "lbl_self".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumBluegray900)
                                            ]),
                                            textAlign: TextAlign.left),
                                        SizedBox(height: 3.v),
                                        Text("msg_phone_number_7465389754".tr,
                                            style: theme.textTheme.bodySmall)
                                      ]))
                            ])),

                        SizedBox(height: 10.v),
                        // msg_self_vital_entry
                        AppbarTitle(text: "msg_self_vital_entry".tr),
                        SizedBox(height: 10.v),
                        Row(
                          children: [
                            Text("lbl_height".tr,
                                style: theme.textTheme.bodyMedium),
                            Text(": ", style: theme.textTheme.bodyMedium),
                            Text("lbl_5_ft_2_inch".tr,
                                style: theme.textTheme.bodyMedium),
                          ],
                        ),
                        SizedBox(height: 15.v),
                        Row(
                          children: [
                            Text("lbl_weight".tr,
                                style: theme.textTheme.bodyMedium),
                            Text(": ", style: theme.textTheme.bodyMedium),
                            Text("lbl_50_kg".tr,
                                style: theme.textTheme.bodyMedium),
                          ],
                        ),
                        SizedBox(height: 15.v),
                        Row(
                          children: [
                            Text("lbl_spo2".tr,
                                style: theme.textTheme.bodyMedium),
                            Text(": ", style: theme.textTheme.bodyMedium),
                            Text("lbl_99".tr,
                                style: theme.textTheme.bodyMedium),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 15.v, right: 5.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl_profiles_1".tr,
                                      style: theme.textTheme.bodyLarge),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(
                                          AppRoutes.manageFamilyMembersScreen);
                                    },
                                    child: Text("lbl_manage_add".tr,
                                        style:
                                            CustomTextStyles.bodyMediumPrimary),
                                  )
                                ])),
                        SizedBox(height: 16.v),
                        CustomImageView(
                            imagePath: ImageConstant.placeholderImage,
                            height: 34.adaptSize,
                            width: 34.adaptSize,
                            radius: BorderRadius.circular(17.h)),
                        SizedBox(height: 8.v),
                        Text("lbl_shreya".tr, style: theme.textTheme.bodySmall),
                        SizedBox(height: 20.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgTablermedicinesyrup,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 6.v, bottom: 8.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_medicine_orders".tr,
                                            style: CustomTextStyles
                                                .bodyLargeBluegray90018),
                                        SizedBox(height: 3.v),
                                        Text("msg_order_history_and".tr,
                                            style:
                                                CustomTextStyles.bodyMedium14)
                                      ])),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  onTap: () {
                                    Get.toNamed(AppRoutes.medicineOrdersScreen);
                                  },
                                  margin:
                                      EdgeInsets.only(top: 8.v, bottom: 10.v))
                            ]),
                        Padding(
                            padding: EdgeInsets.only(top: 12.v),
                            child: Divider(endIndent: 6.h)),
                        SizedBox(height: 13.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgLastethoscope,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 6.v, bottom: 8.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("msg_lab_tests_and_doctor".tr,
                                            style: CustomTextStyles
                                                .bodyLargeBluegray90018),
                                        SizedBox(height: 3.v),
                                        Text("msg_order_history_and".tr,
                                            style:
                                                CustomTextStyles.bodyMedium14)
                                      ])),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  onTap: () {
                                    Get.toNamed(AppRoutes
                                        .labTestsAndDoctorConsultantScreen);
                                  },
                                  margin:
                                      EdgeInsets.only(top: 8.v, bottom: 10.v))
                            ]),
                        Padding(
                            padding: EdgeInsets.only(top: 13.v),
                            child: Divider(endIndent: 6.h)),
                        SizedBox(height: 10.v),
                        Row(children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgCarbondocumentadd,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 7.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 11.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("msg_all_health_records".tr,
                                        style: CustomTextStyles
                                            .bodyLargeBluegray90018),
                                    SizedBox(height: 3.v),
                                    Text("msg_reports_prescription_bills".tr,
                                        style: CustomTextStyles.bodyMedium14)
                                  ])),
                          Spacer(),
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              onTap: () {
                                Get.toNamed(AppRoutes.allHealthRecordScreen);
                              },
                              margin: EdgeInsets.only(top: 8.v, bottom: 10.v))
                        ]),
                        SizedBox(height: 21.v),
                        Text("lbl_more".tr,
                            style: CustomTextStyles.bodyLargeBluegray90018),
                        SizedBox(height: 16.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgTablermedicinesyrup,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 4.v, bottom: 8.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_help".tr,
                                            style: CustomTextStyles
                                                .bodyLargeBluegray90018),
                                        SizedBox(height: 1.v),
                                        Text("msg_faqs_get_help_or".tr,
                                            style:
                                                CustomTextStyles.bodyMedium14)
                                      ])),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 6.v, bottom: 10.v))
                            ]),
                        Padding(
                            padding: EdgeInsets.only(top: 13.v),
                            child: Divider(endIndent: 6.h)),
                        SizedBox(height: 13.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgLastethoscope,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 6.v, bottom: 8.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_address_book".tr,
                                            style: CustomTextStyles
                                                .bodyLargeBluegray90018),
                                        SizedBox(height: 3.v),
                                        Text("msg_edit_add_and_manage".tr,
                                            style:
                                                CustomTextStyles.bodyMedium14)
                                      ])),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 8.v, bottom: 10.v))
                            ]),
                        CustomElevatedButton(
                            text: "lbl_logout".tr,
                            onTap: () {
                              Get.offNamed(
                                AppRoutes.signInScreen,
                              );
                            },
                            margin: EdgeInsets.only(top: 36.v, right: 10.h))
                      ]))),
        ));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
