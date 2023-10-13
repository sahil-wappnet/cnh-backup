import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';

import 'controller/add_prescription_upload_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

class AddPrescriptionUploadScreen
    extends GetWidget<AddPrescriptionUploadController> {
  const AddPrescriptionUploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: CustomAppBar(
          leadingWidth: 25.h,
          leading: AppbarImage(
              svgPath: ImageConstant.imgArrowleft,
              onTap: () {
                onTapArrowleftone();
              }),
          title: AppbarTitle(
              text: "msg_add_prescription".tr,
              margin: EdgeInsets.only(left: 6.h))),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),        
          children: [
            Text("msg_this_item_in_our".tr,
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle15,
                        height: 80.adaptSize,
                        width: 80.adaptSize),
                    SizedBox(width: 10.h,),
                    Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text("lbl_octoxid".tr,
                              style: theme.textTheme.bodyLarge),
                          SizedBox(height: 2.v),
                          Text("msg_by_tidal_laboratories".tr,
                              style: theme.textTheme.bodySmall)
                        ])
                  ]),
            SizedBox(height: 20.v),
            Text("lbl_prescription".tr,
                style: theme.textTheme.bodyLarge),
            SizedBox(height: 10.v),
            Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 11.h, vertical: 12.v),
                decoration: AppDecoration.outlineBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5),
                child: Row(children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgBifilepdf,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 4.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 8.h, top: 1.v),
                      child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text("lbl_prescription".tr,
                                style: theme.textTheme.bodySmall),
                            Text("lbl_4_oct_2023".tr,
                                style: theme.textTheme.bodySmall)
                          ]))
                ])),
          ]),
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 30.v),
        width: mediaQueryData.size.width,
        child: CustomElevatedButton(
          text: "lbl_proceed".tr,
          onTap: () {
            Get.toNamed(AppRoutes.chooseDeliveryLocationScreen);
          },
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
