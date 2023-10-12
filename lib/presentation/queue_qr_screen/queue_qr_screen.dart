import 'controller/queue_qr_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_bottom_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

class QueueQrScreen extends GetWidget<QueueQrController> {
  const QueueQrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
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
                    text: "lbl_queue".tr, margin: EdgeInsets.only(left: 6.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 35.v),
                child: Column(children: [
                  Text("lbl_hospital_queue".tr,
                      style: theme.textTheme.bodyLarge),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 48.h, top: 24.v, right: 48.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.v),
                                child: Column(children: [
                                  Text("lbl_current_token".tr,
                                      style: CustomTextStyles
                                          .bodyMediumBluegray900_1),
                                  SizedBox(height: 3.v),
                                  Text("lbl_0".tr,
                                      style: theme.textTheme.bodySmall)
                                ])),
                            Padding(
                                padding: EdgeInsets.only(left: 41.h),
                                child: SizedBox(
                                    height: 51.v,
                                    child: VerticalDivider(
                                        width: 1.h, thickness: 1.v))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 40.h, top: 8.v, bottom: 8.v),
                                child: Column(children: [
                                  Text("lbl_total_token".tr,
                                      style: CustomTextStyles
                                          .bodyMediumBluegray900_1),
                                  SizedBox(height: 3.v),
                                  Text("lbl_0".tr,
                                      style: theme.textTheme.bodySmall)
                                ]))
                          ])),
                  SizedBox(height: 76.v),
                  Text("lbl_copy_qr_id".tr, style: theme.textTheme.bodyLarge),
                  SizedBox(height: 15.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle21,
                      height: 170.adaptSize,
                      width: 170.adaptSize),
                  Spacer(),
                  SizedBox(height: 8.v),
                  CustomElevatedButton(text: "lbl_copy_qr_code".tr)
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
