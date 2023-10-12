import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';

import 'controller/choose_delivery_location_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

class ChooseDeliveryLocationScreen
    extends GetWidget<ChooseDeliveryLocationController> {
  const ChooseDeliveryLocationScreen({Key? key}) : super(key: key);

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
                    text: "msg_choose_delivery".tr,
                    margin: EdgeInsets.only(left: 6.h))),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 12.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 6.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_deliver_to_home".tr,
                                            style: theme.textTheme.bodyLarge),
                                        Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: GestureDetector(
                                              onTap: () {
                                                Get.toNamed(AppRoutes
                                                    .androidLargeFourteenScreen);
                                              },
                                              child: Text(
                                                  "lbl_change_location".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumPrimary),
                                            ))
                                      ])),
                              SizedBox(height: 7.v),
                              Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCarbonlocation,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Text("msg_sola_ahmedabad".tr,
                                        style: CustomTextStyles.bodyMedium14_1))
                              ]),
                              SizedBox(height: 23.v),
                              Divider(),
                              SizedBox(height: 23.v),
                              SizedBox(
                                  height: 223.v,
                                  width: 328.h,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_delivery_option".tr,
                                                      style: theme
                                                          .textTheme.bodyLarge),
                                                  SizedBox(height: 14.v),
                                                  Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 13.h,
                                                              vertical: 17.v),
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
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                                height: 2.v),
                                                            Text(
                                                                "msg_standard_delivery"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge),
                                                            SizedBox(
                                                                height: 2.v),
                                                            Text(
                                                                "msg_delivered_by_nearest"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .bodyMedium14_1),
                                                            SizedBox(
                                                                height: 9.v),
                                                            Divider(),
                                                            SizedBox(
                                                                height: 9.v),
                                                            SizedBox(
                                                                width: 172.h,
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "msg_all_items_are_a2".tr,
                                                                              style: CustomTextStyles.bodyMedium14),
                                                                          TextSpan(
                                                                              text: "lbl_10_00_pm_today".tr,
                                                                              style: CustomTextStyles.titleSmallRobotoOnPrimary)
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left)),
                                                            SizedBox(
                                                                height: 7.v),
                                                            Divider(),
                                                            SizedBox(
                                                                height: 9.v),
                                                            Text(
                                                                "lbl_rs_300".tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargePrimary),
                                                            SizedBox(
                                                                height: 3.v),
                                                            Text(
                                                                "msg_rs_300_free_delivery"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .bodyMedium14_1)
                                                          ]))
                                                ]))
                                      ])),
                                      SizedBox(height: 10.v,),
                              CustomElevatedButton(
                                onTap: (){
                                  Get.toNamed(AppRoutes.checkoutPageScreen);
                                },
                                  width: mediaQueryData.size.width,
                                  text: "lbl_confirm".tr,
                                  margin: EdgeInsets.only(
                                      right: 14.h, bottom: 17.v),
                                  alignment: Alignment.bottomRight),
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
