import 'controller/forget_password_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:sahil_s_application2/widgets/custom_phone_number.dart';

// ignore_for_file: must_be_immutable
class ForgetPasswordScreen extends GetWidget<ForgetPasswordController> {
  ForgetPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 30.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarSubtitle(
                    text: "lbl_forgot_password".tr,
                    margin: EdgeInsets.only(left: 6.h))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 330.h,
                              margin: EdgeInsets.only(right: 16.h),
                              child: Text("msg_enter_you_mobile".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyMedium
                                      ?.copyWith(fontSize: 13))),
                          SizedBox(
                            height: 200.v,
                          ),
                          Text("lbl_mobile_number".tr,
                              style: theme.textTheme.bodySmall
                                  ?.copyWith(fontSize: 12)),
                          Padding(
                              padding: EdgeInsets.only(top: 9.v, right: 9.h),
                              child: Obx(() => CustomPhoneNumber(
                                  country: controller.selectedCountry.value,
                                  controller: controller.phoneNumberController,
                                  onTap: (Country country) {
                                    controller.selectedCountry.value = country;
                                  }))),
                          SizedBox(height: 36.v),
                          CustomElevatedButton(
                            height: 36.v,
                            width: 324.h,
                            text: "lbl_continue".tr,
                            onTap: () {
                              Get.toNamed(
                                AppRoutes.verificationScreen,
                              );
                            },
                          ),
                          SizedBox(height: 36.v)
                        ])))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
