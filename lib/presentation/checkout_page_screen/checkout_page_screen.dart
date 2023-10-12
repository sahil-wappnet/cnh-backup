import 'controller/checkout_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

class CheckoutPageScreen extends GetWidget<CheckoutPageController> {
  const CheckoutPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 43.v),
                      decoration: AppDecoration.fillPrimary,
                      child: Column(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowleftWhiteA700,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.centerLeft,
                            onTap: () {
                              onTapImgArrowleftone();
                            }),
                        SizedBox(height: 33.v),
                        Text("lbl_amount_to_pay".tr,
                            style: CustomTextStyles.bodyLargeWhiteA700),
                        SizedBox(height: 3.v),
                        Text("lbl_rs_300".tr,
                            style: theme.textTheme.displaySmall),
                        SizedBox(height: 23.v)
                      ])),
                  Container(
                      width: 332.h,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 38.v, right: 12.h),
                      child: Text("msg_total_mrp".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMedium14_1
                              .copyWith(height: 1.43))),
                  Padding(
                      padding: EdgeInsets.only(top: 14.v),
                      child: Divider(indent: 16.h, endIndent: 16.h)),
                  SizedBox(height: 12.v),
                  Text("  ".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary14),
                  Padding(
                      padding: EdgeInsets.fromLTRB(16.h, 25.v, 16.h, 89.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomElevatedButton(
                              onTap: (){
                                Get.toNamed(AppRoutes.trackingScreen);
                              },
                                width: 157.h, text: "msg_cash_on_delivery".tr),
                            CustomElevatedButton(
                              onTap: (){
                                Get.toNamed(AppRoutes.trackingScreen);
                              },
                                width: 157.h,
                                text: "lbl_pay_online".tr,
                                margin: EdgeInsets.only(left: 13.h))
                          ])),
                          
                ])))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapImgArrowleftone() {
    Get.back();
  }
}
