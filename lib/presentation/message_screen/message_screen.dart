import 'controller/message_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_circleimage.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image_2.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_bottom_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

class MessageScreen extends GetWidget<MessageController> {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                centerTitle: true,
                title: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: Row(children: [
                        AppbarImage2(
                            svgPath: ImageConstant.imgArrowleft,
                            onTap: () {
                              onTapArrowleftone();
                            }),
                        AppbarCircleimage(
                            imagePath: ImageConstant.placeholderImage,
                            margin: EdgeInsets.only(left: 15.h)),
                        AppbarSubtitle(
                            text: "lbl_dr_khan2".tr,
                            margin: EdgeInsets.only(
                                left: 5.h, top: 2.v, bottom: 2.v)),
                        AppbarImage2(
                            svgPath: ImageConstant.imgCarbonvideo,
                            margin: EdgeInsets.only(
                                left: 134.h, top: 2.v, bottom: 2.v)),
                        AppbarImage2(
                            svgPath: ImageConstant.imgFluentcall32regular,
                            margin: EdgeInsets.only(
                                left: 22.h, top: 2.v, bottom: 2.v))
                      ])),
                  SizedBox(height: 14.v),
                  SizedBox(width: 328.h, child: Divider())
                ]),
                styleType: Style.bgFill),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 22.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_today".tr,
                              style: theme.textTheme.bodySmall)),
                      CustomElevatedButton(
                          width: 94.h,
                          text: "lbl_hello_doctor".tr,
                          margin: EdgeInsets.only(top: 21.v, right: 9.h),
                          alignment: Alignment.centerRight,
                          isDisabled: true),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 9.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 3.v, bottom: 1.v),
                                        child: Text("lbl_10_00".tr,
                                            style: theme.textTheme.bodySmall)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCheckmark,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(left: 5.h))
                                  ]))),
                      CustomElevatedButton(
                          width: 94.h,
                          text: "lbl_yes_shreya".tr,
                          margin: EdgeInsets.only(left: 16.h, top: 20.v),
                          isDisabled: true),
                      Padding(
                          padding: EdgeInsets.only(left: 80.h, top: 3.v),
                          child: Text("lbl_10_01".tr,
                              style: theme.textTheme.bodySmall)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: 9.h, top: 19.v, right: 9.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7.h, vertical: 8.v),
                              decoration: AppDecoration.fillGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder2),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 3.v),
                                    Text("msg_are_you_available".tr,
                                        style: theme.textTheme.bodyMedium)
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 9.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 3.v, bottom: 1.v),
                                        child: Text("lbl_10_02".tr,
                                            style: theme.textTheme.bodySmall)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCheckmark,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        margin: EdgeInsets.only(left: 5.h))
                                  ]))),
                      CustomElevatedButton(
                          width: 94.h,
                          text: "lbl_yes_shreya".tr,
                          margin: EdgeInsets.only(left: 16.h, top: 20.v),
                          isDisabled: true),
                      Padding(
                          padding: EdgeInsets.only(left: 80.h, top: 3.v),
                          child: Text("lbl_10_03".tr,
                              style: theme.textTheme.bodySmall)),
                      Spacer(),
                      Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                              horizontal: 27.h, vertical: 23.v),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgRihomeline,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 2.v, bottom: 1.v)),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgMingcutecalendarline,
                                    height: 24.v,
                                    width: 20.h,
                                    margin:
                                        EdgeInsets.only(top: 2.v, bottom: 1.v)),
                                Column(children: [
                                  Text("lbl_chats".tr,
                                      style: CustomTextStyles
                                          .bodyMediumIndigoA400),
                                  SizedBox(height: 5.v),
                                  Container(
                                      height: 5.adaptSize,
                                      width: 5.adaptSize,
                                      decoration: BoxDecoration(
                                          color: appTheme.indigoA400,
                                          borderRadius:
                                              BorderRadius.circular(2.h)))
                                ]),
                                CustomImageView(
                                    svgPath: ImageConstant.imgIconamoonprofile,
                                    height: 24.v,
                                    width: 20.h,
                                    margin: EdgeInsets.only(top: 2.v))
                              ]))
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
