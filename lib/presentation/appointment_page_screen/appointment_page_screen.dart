import 'package:get/get.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import 'controller/appointment_page_controller.dart';

import 'package:flutter/material.dart';

class AppointmentPageScreen extends GetWidget<AppointmentPageController> {
  const AppointmentPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            CustomAppBar(
                title: AppbarTitle(
                    text: "msg_your_appointment".tr,
                    margin: EdgeInsets.only(left: 7.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMdibellnotificationoutline,
                      onTap: () {
                        onTapMdibellnotifica();
                      })
                ]),
            Expanded(
                child: SingleChildScrollView(
                    padding:
                        EdgeInsets.only(left: 10.h, right: 10.h, bottom: 5.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 34.h, vertical: 23.v),
                              decoration: AppDecoration.outlineGrayC.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder17),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(children: [
                                      Text("lbl_october_2023".tr.toUpperCase(),
                                          style: CustomTextStyles
                                              .titleSmallPrimary),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgIcons,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgIcons,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.only(left: 24.h))
                                    ]),
                                    Padding(
                                        padding: EdgeInsets.only(top: 20.v),
                                        child: Divider(
                                            color: appTheme.gray300,
                                            indent: 5.h,
                                            endIndent: 4.h)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, top: 19.v, right: 5.h),
                                        child: Row(children: [
                                          Text("lbl_mon".tr.toUpperCase(),
                                              style:
                                                  theme.textTheme.labelMedium),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 16.h),
                                              child: Text(
                                                  "lbl_tue".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.labelMedium)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 16.h),
                                              child: Text(
                                                  "lbl_wed".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.labelMedium)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 16.h),
                                              child: Text(
                                                  "lbl_thu".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.labelMedium)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 21.h),
                                              child: Text(
                                                  "lbl_fri".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.labelMedium)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 22.h),
                                              child: Text(
                                                  "lbl_sat".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.labelMedium)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 18.h),
                                              child: Text(
                                                  "lbl_sun".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.labelMedium))
                                        ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.h,
                                                top: 19.v,
                                                right: 8.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 3.v),
                                                      child: Text(
                                                          "lbl_1"
                                                              .tr
                                                              .toUpperCase(),
                                                          style: theme.textTheme
                                                              .titleSmall)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 32.h,
                                                          top: 3.v,
                                                          bottom: 3.v),
                                                      child: Text(
                                                          "lbl_2"
                                                              .tr
                                                              .toUpperCase(),
                                                          style: theme.textTheme
                                                              .titleSmall)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 30.h,
                                                          top: 3.v,
                                                          bottom: 3.v),
                                                      child: Text(
                                                          "lbl_3"
                                                              .tr
                                                              .toUpperCase(),
                                                          style: theme.textTheme
                                                              .titleSmall)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 30.h,
                                                          top: 3.v,
                                                          bottom: 3.v),
                                                      child: Text(
                                                          "lbl_4"
                                                              .tr
                                                              .toUpperCase(),
                                                          style: theme.textTheme
                                                              .titleSmall)),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          left: 22.h),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 7.h,
                                                              vertical: 3.v),
                                                      decoration: AppDecoration
                                                          .fillPrimary
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder12),
                                                      child: Text(
                                                          "lbl_5"
                                                              .tr
                                                              .toUpperCase(),
                                                          style: CustomTextStyles
                                                              .titleSmallGray5001)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 22.h,
                                                          top: 3.v,
                                                          bottom: 3.v),
                                                      child: Text(
                                                          "lbl_6"
                                                              .tr
                                                              .toUpperCase(),
                                                          style: theme.textTheme
                                                              .titleSmall)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 30.h,
                                                          top: 3.v,
                                                          bottom: 3.v),
                                                      child: Text(
                                                          "lbl_7"
                                                              .tr
                                                              .toUpperCase(),
                                                          style: theme.textTheme
                                                              .titleSmall))
                                                ]))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 7.h, top: 19.v, right: 3.h),
                                        child: Row(children: [
                                          Text("lbl_8".tr.toUpperCase(),
                                              style:
                                                  theme.textTheme.titleSmall),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 30.h),
                                              child: Text(
                                                  "lbl_9".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 26.h),
                                              child: Text(
                                                  "lbl_10".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 24.h),
                                              child: Text(
                                                  "lbl_11".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 26.h),
                                              child: Text(
                                                  "lbl_12".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 24.h),
                                              child: Text(
                                                  "lbl_13".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 23.h),
                                              child: Text(
                                                  "lbl_14".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall))
                                        ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, top: 22.v, right: 5.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_15".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              Text("lbl_16".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              Text("lbl_17".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              Text("lbl_18".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              Text("lbl_19".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              Text("lbl_20".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              Text("lbl_21".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall)
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 3.h, top: 22.v, right: 3.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_22".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              Text("lbl_23".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              Text("lbl_24".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              Text("lbl_25".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              Text("lbl_26".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              Text("lbl_27".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              Text("lbl_28".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall)
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 3.h, top: 22.v, bottom: 3.v),
                                        child: Row(children: [
                                          Text("lbl_29".tr.toUpperCase(),
                                              style:
                                                  theme.textTheme.titleSmall),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 21.h),
                                              child: Text(
                                                  "lbl_30".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 22.h),
                                              child: Text(
                                                  "lbl_31".tr.toUpperCase(),
                                                  style: theme
                                                      .textTheme.titleSmall))
                                        ]))
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h, top: 37.v),
                              child: Text("msg_your_appointment".tr,
                                  style: theme.textTheme.bodyLarge)),
                          SizedBox(height: 34.v),
                          Row(children: [
                            Column(children: [
                              Text("lbl_10_am".tr,
                                  style: theme.textTheme.bodyMedium),
                              SizedBox(height: 134.v),
                              Text("lbl_11_am".tr,
                                  style: theme.textTheme.bodyMedium),
                              SizedBox(height: 132.v),
                              Text("lbl_12_pm".tr,
                                  style: theme.textTheme.bodyMedium)
                            ]),
                            Container(
                                height: 304.v,
                                width: 10.h,
                                margin: EdgeInsets.only(
                                    left: 18.h, top: 5.v, bottom: 4.v),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              height: 10.adaptSize,
                                              width: 10.adaptSize,
                                              decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.h)))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: 10.adaptSize,
                                              width: 10.adaptSize,
                                              decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.h)))),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              height: 10.adaptSize,
                                              width: 10.adaptSize,
                                              decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.h)))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 293.v,
                                              child: VerticalDivider(
                                                  width: 1.h,
                                                  thickness: 1.v,
                                                  color: theme
                                                      .colorScheme.primary)))
                                    ])),
                            GestureDetector(
                                onTap: () {
                                  onTapStackarrowright();
                                },
                                child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.only(
                                        left: 7.h, top: 6.v, bottom: 183.v),
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: appTheme.blueGray100,
                                            width: 1.h),
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5),
                                    child: Container(
                                        height: 124.v,
                                        width: 254.h,
                                        padding: EdgeInsets.all(7.h),
                                        decoration: AppDecoration
                                            .outlineBlueGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                      top: 10.v)),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: SizedBox(
                                                      height: 96.v,
                                                      width: 232.h,
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: SizedBox(
                                                                    height:
                                                                        96.v,
                                                                    width:
                                                                        140.h,
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.placeholderImage,
                                                                              height: 34.adaptSize,
                                                                              width: 34.adaptSize,
                                                                              radius: BorderRadius.circular(17.h),
                                                                              alignment: Alignment.topLeft,
                                                                              margin: EdgeInsets.only(left: 4.h)),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, children: [
                                                                                Align(alignment: Alignment.center, child: Text("lbl_dr_ruhi".tr, style: CustomTextStyles.bodyMedium14)),
                                                                                Padding(padding: EdgeInsets.only(top: 4.v, right: 6.h), child: Text("msg_heart_specialist6".tr, style: theme.textTheme.bodySmall)),
                                                                                SizedBox(height: 7.v),
                                                                                Text("lbl_regular_checkup".tr, style: theme.textTheme.bodySmall),
                                                                                SizedBox(height: 15.v),
                                                                                Align(alignment: Alignment.centerLeft, child: Text("lbl_10_am_11_am".tr, style: theme.textTheme.bodySmall))
                                                                              ]))
                                                                        ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        bottom: 23
                                                                            .v),
                                                                    child: SizedBox(
                                                                        width: 232
                                                                            .h,
                                                                        child:
                                                                            Divider())))
                                                          ])))
                                            ]))))
                          ])
                        ]))),
          ],
        ));
  }

  /// Navigates to the notificationsTabContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the notificationsTabContainerScreen.
  onTapMdibellnotifica() {
    Get.toNamed(
      AppRoutes.notificationsTabContainerScreen,
    );
  }

  /// Navigates to the bookedAppointmentScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the bookedAppointmentScreen.
  onTapStackarrowright() {
    Get.toNamed(
      AppRoutes.bookedAppointmentScreen,
    );
  }
}
