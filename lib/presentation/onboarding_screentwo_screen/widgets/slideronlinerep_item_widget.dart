import '../controller/onboarding_screentwo_controller.dart';
import '../models/slideronlinerep_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SlideronlinerepItemWidget extends StatelessWidget {
  SlideronlinerepItemWidget(
    this.slideronlinerepItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SlideronlinerepItemModel slideronlinerepItemModelObj;

  var controller = Get.find<OnboardingScreentwoController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "msg_online_report_and".tr,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          "msg_lorem_ipsum_is_simply".tr,
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
