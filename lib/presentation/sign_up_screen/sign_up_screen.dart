import 'controller/sign_up_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/core/utils/validation_functions.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:sahil_s_application2/widgets/custom_phone_number.dart';
import 'package:sahil_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    margin:
                        EdgeInsets.symmetric(vertical: 14.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarSubtitle(
                    text: "lbl_sign_up".tr,
                    margin: EdgeInsets.only(left: 6.h))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.all(16.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 125.h,
                              child: Text("msg_let_us_begin_with".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyMedium)),
                          SizedBox(height: 24.v),
                          Text("lbl_your_name".tr,
                              style: theme.textTheme.bodySmall),
                          CustomTextFormField(
                              controller: controller.nameController,
                              margin: EdgeInsets.only(top: 9.v, right: 8.h),
                              hintText: "lbl_shreya_shah2".tr),
                          SizedBox(height: 21.v),
                          Text("lbl_mobile_number".tr,
                              style: theme.textTheme.bodySmall),
                          Padding(
                              padding: EdgeInsets.only(top: 9.v, right: 9.h),
                              child: Obx(() => CustomPhoneNumber(
                                  country: controller.selectedCountry.value,
                                  controller: controller.phoneNumberController,
                                  onTap: (Country country) {
                                    controller.selectedCountry.value = country;
                                  }))),
                          SizedBox(height: 17.v),
                          Text("lbl_password".tr,
                              style: theme.textTheme.bodySmall),
                          CustomTextFormField(
                              controller: controller.passwordController,
                              margin: EdgeInsets.only(top: 9.v, right: 9.h),
                              hintText: "lbl".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              obscureText: true),
                          SizedBox(height: 20.v),
                          CustomElevatedButton(text: "lbl_sign_up".tr,onTap: () {
                      Get.offNamed(
                        AppRoutes.signInScreen,
                      );
                    },),
                          SizedBox(height: 15.v),
                          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "msg_have_an_account".tr,
                    style: CustomTextStyles.bodyMediumPrimary,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offNamed(
                        AppRoutes.signInScreen,
                      );
                    },
                    child: Text(
                      "msg_have_an_account_sign_in".tr,
                      style: CustomTextStyles.bodyMediumPrimary,
                    ),
                  )
                ]),
                         
                          SizedBox(height: 5.v)
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
