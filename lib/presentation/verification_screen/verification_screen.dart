import 'package:pinput/pinput.dart';
import '../../widgets/app_bar/appbar_title.dart';
import 'controller/verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

class VerificationScreen extends GetWidget<VerificationController> {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 35.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarTitle(
                    text: "msg_enter_4_digits_code".tr,
                    margin: EdgeInsets.only(left: 6.h))),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_enter_4_digit_code".tr,
                        style: theme.textTheme.bodyMedium),
                    SizedBox(
                      height: 40.v,
                    ),
                    Center(
                      child: Pinput(
                        length: 4,
                        controller: controller.otpController.value,
                        textInputAction: TextInputAction.next,
                        defaultPinTheme: PinTheme(
                          height: 50,
                          width: 52,
                          textStyle: theme.textTheme.bodyMedium
                              ?.copyWith(color: appTheme.black900),
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: appTheme.gray300, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        focusedPinTheme: PinTheme(
                          height: 52,
                          width: 52,
                          textStyle: theme.textTheme.bodyMedium
                              ?.copyWith(color: appTheme.black900),
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: appTheme.black900, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.v,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            controller.resentOtpTimer();
                          },
                          child: Text("ResendOtp",
                              style: theme.textTheme.bodyMedium?.copyWith(
                                  color: controller.timer!.isActive
                                      ? appTheme.blueGray900
                                      : appTheme.indigoA400)),
                        ),
                        SizedBox(width: 20.h),
                        Text("|",
                            style: theme.textTheme.bodyMedium
                                ?.copyWith(color: appTheme.black900)),
                        SizedBox(width: 20.h),
                        Text("requestOtpAgain In",
                            style: theme.textTheme.bodyMedium
                                ?.copyWith(color: appTheme.blueGray400)),
                        SizedBox(width: 20.h),
                        Text(
                            "00:${controller.start.toString().padLeft(2, '0')}",
                            style: theme.textTheme.bodyMedium
                                ?.copyWith(color: appTheme.black900)),
                      ],
                    ),
                    SizedBox(
                      height: 40.v,
                    ),
                    CustomElevatedButton(
                      text: "lbl_continue".tr,
                      onTap: () {
                        Get.toNamed(
                          AppRoutes.resetPasswordScreen,
                        );
                      },
                    )
                  ]),
            )));
  }

  onTapArrowleftone() {
    Get.back();
  }
}
