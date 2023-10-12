import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';

import 'controller/add_self_vital_detail_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:sahil_s_application2/widgets/custom_text_form_field.dart';

class AddSelfVitalDetailPageScreen
    extends GetWidget<AddSelfVitalDetailPageController> {
  const AddSelfVitalDetailPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 25.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarTitle(
                    text: "msg_add_self_vital_details".tr,
                    margin: EdgeInsets.only(left: 6.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_height".tr, style: theme.textTheme.bodySmall),
                      CustomTextFormField(
                          controller: controller.heightinftoneController,
                          margin: EdgeInsets.only(top: 8.v, right: 9.h),
                          hintText: "lbl_height_in_ft".tr,
                          hintStyle: CustomTextStyles.bodyMediumGray50001),
                      SizedBox(height: 15.v),
                      Text("lbl_weight".tr, style: theme.textTheme.bodySmall),
                      CustomTextFormField(
                          controller: controller.weightinkgoneController,
                          margin: EdgeInsets.only(top: 8.v, right: 9.h),
                          hintText: "lbl_weight_in_kg".tr,
                          hintStyle: CustomTextStyles.bodyMediumGray50001),
                      SizedBox(height: 15.v),
                      Text("lbl_spo2".tr, style: theme.textTheme.bodySmall),
                      CustomTextFormField(
                          controller: controller.spo2valueoneController,
                          margin: EdgeInsets.only(top: 8.v, right: 9.h),
                          hintText: "lbl_spo2".tr,
                          hintStyle: CustomTextStyles.bodyMediumGray50001,
                          textInputAction: TextInputAction.done),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(text: "lbl_save".tr)
                    ])),
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
