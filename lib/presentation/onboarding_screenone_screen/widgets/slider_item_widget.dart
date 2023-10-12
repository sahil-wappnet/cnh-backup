import '../controller/onboarding_screenone_controller.dart';
import '../models/slider_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(
    this.sliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderItemModel sliderItemModelObj;

  var controller = Get.find<OnboardingScreenoneController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle19,
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
