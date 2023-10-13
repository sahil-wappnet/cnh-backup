import 'controller/sign_in_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/core/utils/validation_functions.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:sahil_s_application2/widgets/custom_phone_number.dart';
import 'package:sahil_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 47.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_sign_in".tr,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 32.v),
              SizedBox(
                width: 88.h,
                child: Text(
                  "msg_welcome_back_let_s".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 31.v),
              Text(
                "lbl_mobile_number".tr,
                style: theme.textTheme.bodySmall,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 9.v,
                  right: 8.h,
                ),
                child: Obx(
                  () => CustomPhoneNumber(
                    country: controller.selectedCountry.value,
                    controller: controller.phoneNumberController,
                    onTap: (Country country) {
                      controller.selectedCountry.value = country;
                    },
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Text(
                "lbl_password".tr,
                style: theme.textTheme.bodySmall,
              ),
              Obx(
                () => CustomTextFormField(
                  controller: controller.passwordController,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    right: 8.h,
                  ),
                  hintText: "lbl".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  suffix: InkWell(
                    onTap: () {
                      controller.isShowPassword.value =
                          !controller.isShowPassword.value;
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 10.v, 8.h, 10.v),
                      child: CustomImageView(
                        svgPath: controller.isShowPassword.value
                            ? ImageConstant.imgPheye
                            : ImageConstant.imgPheye,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 40.v,
                  ),
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "Please enter valid password";
                    }
                    return null;
                  },
                  obscureText: controller.isShowPassword.value,
                  contentPadding: EdgeInsets.only(
                    left: 15.h,
                    top: 12.v,
                    bottom: 12.v,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 6.v,
                    right: 8.h,
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Get.toNamed(
                      AppRoutes.forgetPasswordScreen,
                    );
                      
                    },
                    child: Text(
                      "msg_forget_password".tr,
                      style: CustomTextStyles.bodyMediumPrimary,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              CustomElevatedButton(
                text: "lbl_sign_in".tr,
                onTap: () {
                    Get.offNamed(
                      AppRoutes.homePageTabContainerScreen,
                    );
                  },
              ),
              SizedBox(height: 16.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "msg_don_t_have_an_account".tr,
                  style: CustomTextStyles.bodyMediumPrimary,
                ),
                GestureDetector(
                  onTap: () {
                    Get.offNamed(
                      AppRoutes.signUpScreen,
                    );
                  },
                  child: Text(
                    "msg_don_t_have_an_account_sign_up".tr,
                    style: CustomTextStyles.bodyMediumPrimary,
                  ),
                )
              ]),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
