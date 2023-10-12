import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';

import 'controller/tracking_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';

class TrackingScreen extends GetWidget<TrackingController> {
  const TrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 25.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarTitle(
                    text: "msg_tracking_medicine".tr,
                    margin: EdgeInsets.only(left: 6.h))),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 12.v),
                    child: Container(
                        height: 527.v,
                        width: 328.h,
                        margin: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: SizedBox(
                                      height: 378.v,
                                      child: VerticalDivider(
                                          width: 1.h,
                                          thickness: 1.v,
                                          endIndent: 35.h)))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("msg_order_id_1459210".tr,
                                        style: theme.textTheme.bodyLarge),
                                    SizedBox(height: 3.v),
                                    Text("lbl_view_details".tr,
                                        style:
                                            CustomTextStyles.bodyMediumPrimary),
                                    SizedBox(height: 31.v),
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_order_delivery_by2".tr,
                                              style: CustomTextStyles
                                                  .bodyMedium14),
                                          TextSpan(
                                              text: "lbl_10_00_pm_today".tr,
                                              style: CustomTextStyles
                                                  .titleSmallRobotoOnPrimary)
                                        ]),
                                        textAlign: TextAlign.left),
                                    SizedBox(height: 16.v),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 33.v),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 6.h,
                                                  vertical: 13.v),
                                              decoration: AppDecoration.fillTeal
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder22),
                                              child: Text("lbl_done".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumWhiteA700)),
                                          Expanded(
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 19.h, top: 4.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "msg_payment_successful"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge),
                                                        SizedBox(height: 2.v),
                                                        SizedBox(
                                                            width: 244.h,
                                                            child: Text(
                                                                "msg_you_choose_the_payment"
                                                                    .tr,
                                                                maxLines: 3,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: CustomTextStyles
                                                                    .bodyMedium14_1))
                                                      ])))
                                        ])
                                  ])),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 52.v),
                                  child: SizedBox(
                                      width: 328.h, child: Divider()))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  margin: EdgeInsets.only(top: 210.v),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 6.h, vertical: 13.v),
                                  decoration: AppDecoration.fillTeal.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder22),
                                  child: Text("lbl_done".tr,
                                      style: CustomTextStyles
                                          .bodyMediumWhiteA700))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 57.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            margin:
                                                EdgeInsets.only(bottom: 146.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.h,
                                                vertical: 13.v),
                                            decoration: AppDecoration
                                                .fillPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder22),
                                            child: Text("lbl_now".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumWhiteA700)),
                                        Expanded(
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: 15.h, top: 39.v),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 7.h,
                                                    vertical: 19.v),
                                                decoration: AppDecoration
                                                    .outlineBlueGray
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 3.h),
                                                          child: Text(
                                                              "msg_medicine_to_be_packed"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge)),
                                                      Container(
                                                          width: 227.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 2.h,
                                                                  top: 12.v,
                                                                  right: 15.h),
                                                          child: Text(
                                                              "msg_we_will_start_packing"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: CustomTextStyles
                                                                  .bodyMedium14_1)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 11.v),
                                                          child: Divider(
                                                              endIndent: 2.h)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 1.h,
                                                                  top: 13.v,
                                                                  right: 6.h),
                                                          child: Row(children: [
                                                            Text(
                                                                "msg_1_medicine_oredered"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 61
                                                                            .h),
                                                                child: Text(
                                                                    "lbl_view"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodyMediumPrimary))
                                                          ]))
                                                    ])))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.h, vertical: 13.v),
                                  decoration: AppDecoration.outlineGray
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder22),
                                  child: Text("lbl_next".tr,
                                      style: CustomTextStyles.bodyMedium14_1))),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 64.h, bottom: 10.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("msg_prescription_verified".tr,
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 3.v),
                                        Row(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgBifilepdf,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 8.h, top: 2.v),
                                              child: Text(
                                                  "msg_view_prescription".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumPrimary))
                                        ]),
                                        SizedBox(height: 29.v),
                                        Text("msg_we_re_sourcing_medicines".tr,
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 194.v),
                                        Text("msg_out_for_delivery".tr,
                                            style: theme.textTheme.bodyLarge)
                                      ])))
                        ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
