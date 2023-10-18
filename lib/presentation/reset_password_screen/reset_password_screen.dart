import 'controller/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/core/utils/validation_functions.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:sahil_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  ResetPasswordScreen({Key? key}) : super(key: key);

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
                    text: "lbl_reset_password".tr,
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
                              width: 287.h,
                              margin: EdgeInsets.only(right: 40.h),
                              child: Text("msg_set_the_new_password".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyMedium
                                      ?.copyWith(fontSize: 13))),
                          SizedBox(height: 22.v),
                          Text("lbl_password".tr,
                              style: theme.textTheme.bodySmall
                                  ?.copyWith(fontSize: 12)),
                          Obx(() => CustomTextFormField(
                              controller: controller.passwordController,
                              margin: EdgeInsets.only(top: 9.v, right: 8.h),
                              hintText: "lbl".tr,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 10.v, 8.h, 10.v),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword.value
                                                  ? ImageConstant.imgPheye
                                                  : ImageConstant.imgPheye))),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 40.v),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              obscureText: controller.isShowPassword.value,
                              contentPadding: EdgeInsets.only(
                                  left: 15.h, top: 12.v, bottom: 12.v))),
                          SizedBox(height: 23.v),
                          Text("msg_confirm_password".tr,
                              style: theme.textTheme.bodySmall
                                  ?.copyWith(fontSize: 12)),
                          Obx(
                            () => CustomTextFormField(
                              controller: controller.confirmpasswordController,
                              margin: EdgeInsets.only(top: 10.v, right: 8.h),
                              hintText: "lbl".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword1.value =
                                        !controller.isShowPassword1.value;
                                  },
                                  child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 10.v, 8.h, 10.v),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword1.value
                                                  ? ImageConstant.imgPheye
                                                  : ImageConstant.imgPheye))),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 40.v),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              obscureText: controller.isShowPassword1.value,
                              contentPadding: EdgeInsets.only(
                                  left: 15.h, top: 12.v, bottom: 12.v),
                            ),
                          ),
                          SizedBox(height: 43.v),
                          CustomElevatedButton(
                            height: 36.v,
                            width: 324.h,
                            text: "lbl_continue".tr,
                            onTap: () {
                              Get.offNamed(
                                AppRoutes.signInScreen,
                              );
                            },
                          ),
                          SizedBox(height: 5.v)
                        ])))));
  }

  onTapArrowleftone() {
    Get.back();
  }
}
