import 'controller/android_large_fourteen_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_text_form_field.dart';

class AndroidLargeFourteenScreen
    extends GetWidget<AndroidLargeFourteenController> {
  const AndroidLargeFourteenScreen({Key? key}) : super(key: key);

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
                    text: "msg_set_delivery_location".tr,
                    margin: EdgeInsets.only(left: 6.h))),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 18.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("msg_search_for_nearest".tr,
                                  style: theme.textTheme.bodySmall),
                              SizedBox(height: 12.v),
                              CustomTextFormField(
                                  controller: controller.searchController,
                                  hintText: "lbl_location_here".tr,
                                  hintStyle: CustomTextStyles.bodyMedium14_1,
                                  textInputAction: TextInputAction.done,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          10.h, 10.v, 5.h, 10.v),
                                      child: CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCarbonlocation)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 40.v),
                                  suffix: Container(
                                      padding: EdgeInsets.fromLTRB(
                                          30.h, 5.v, 3.h, 5.v),
                                      margin: EdgeInsets.only(),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.h),
                                          border: Border.all(
                                              color: appTheme.blueGray100,
                                              width: 1.h)),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgGridiconsaddoutlinePrimary)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 40.v),
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 10.v)),
                              SizedBox(height: 21.v),
                              Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgTeenyiconslocationoutline,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text("msg_use_current_location".tr,
                                        style:
                                            CustomTextStyles.bodyMediumPrimary))
                              ])
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
