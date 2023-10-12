import 'controller/qr_scanner_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class QrScannerScreen extends GetWidget<QrScannerController> {
  const QrScannerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 116.v),
              CustomImageView(
                svgPath: ImageConstant.imgVector,
                height: 220.adaptSize,
                width: 220.adaptSize,
              ),
              Spacer(),
              CustomElevatedButton(
                text: "lbl_paste_qr_code".tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
