import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'controller/payment_success_controller.dart';

import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentSuccessScreen extends GetWidget<PaymentSuccessController> {
  const PaymentSuccessScreen({Key? key})
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgCheckmarkPrimary,
                height: 83.adaptSize,
                width: 83.adaptSize,
              ),
              SizedBox(height: 20.v),
              SizedBox(
                child: Text(
                  "msg_your_payment_for".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}
