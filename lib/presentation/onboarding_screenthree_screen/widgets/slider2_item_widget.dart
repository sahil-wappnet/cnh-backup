import '../controller/onboarding_screenthree_controller.dart';
import '../models/slider2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Slider2ItemWidget extends StatelessWidget {
  Slider2ItemWidget(
    this.slider2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Slider2ItemModel slider2ItemModelObj;

  var controller = Get.find<OnboardingScreenthreeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle191,
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
