import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';

import 'controller/add_prescription_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

class AddPrescriptionScreen extends GetWidget<AddPrescriptionController> {
  const AddPrescriptionScreen({Key? key}) : super(key: key);

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
                    text: "msg_add_prescription".tr,
                    margin: EdgeInsets.only(left: 6.h))),
            body: SizedBox(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 20.h, bottom: 5.v),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_this_item_in_our".tr,
                                      style: theme.textTheme.bodySmall),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(top: 14.v, right: 70.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgRectangle15,
                                            height: 80.adaptSize,
                                            width: 80.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 21.h,
                                                top: 21.v,
                                                bottom: 21.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_octoxid".tr,
                                                      style: theme
                                                          .textTheme.bodyLarge),
                                                  SizedBox(height: 2.v),
                                                  Text(
                                                      "msg_by_tidal_laboratories"
                                                          .tr,
                                                      style:
                                                          theme.textTheme.bodySmall)
                                                ]))
                                      ])),
                                  SizedBox(height: 552.v),
                                  
                                ]),
                                CustomElevatedButton(
                                      text: "msg_upload_prescription".tr,
                                      onTap: () {
                                              onTapUpload();
                                            },
                                      leftIcon: Container(
                                          margin: EdgeInsets.only(right: 10.h),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgMaterialsymbol)))
                          ],
                        ))))));
  }

  onTapUpload() {
    Get.toNamed(
      AppRoutes.addPrescriptionUploadScreen,
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
