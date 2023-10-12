import '../controller/onboarding_screentwo_controller.dart';
import '../models/slider1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Slider1ItemWidget extends StatelessWidget {
  Slider1ItemWidget(
    this.slider1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Slider1ItemModel slider1ItemModelObj;

  var controller = Get.find<OnboardingScreentwoController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle19260x260,
        height: 260.adaptSize,
        width: 260.adaptSize,
        radius: BorderRadius.only(
          topLeft: Radius.circular(20.h),
          bottomRight: Radius.circular(20.h),
        ),
      ),
    );
  }
}
