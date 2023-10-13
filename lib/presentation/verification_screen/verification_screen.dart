import '../../widgets/app_bar/appbar_title.dart';
import 'controller/verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:sahil_s_application2/widgets/custom_pin_code_text_field.dart';

class VerificationScreen extends GetWidget<VerificationController> {
  const VerificationScreen({Key? key}) : super(key: key);

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
                    text: "msg_enter_4_digits_code".tr,
                    margin: EdgeInsets.only(left: 6.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("msg_enter_4_digit_code".tr,
                          style: theme.textTheme.bodyMedium),
                      Obx(() => CustomPinCodeTextField(
                          context: context,
                          margin: EdgeInsets.only(
                              left: 61.h, top: 40.v, right: 62.h),
                          controller: controller.otpController.value,
                          onChanged: (value) {})),
                      Spacer(),
                      CustomElevatedButton(text: "lbl_continue".tr,onTap: (){
                         Get.toNamed(
                        AppRoutes.resetPasswordScreen,
                      );
                      },)
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
