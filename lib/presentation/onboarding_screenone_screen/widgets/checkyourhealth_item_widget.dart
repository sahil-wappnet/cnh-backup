import '../controller/onboarding_screenone_controller.dart';
import '../models/checkyourhealth_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CheckyourhealthItemWidget extends StatelessWidget {
  CheckyourhealthItemWidget(
    this.checkyourhealthItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CheckyourhealthItemModel checkyourhealthItemModelObj;

  var controller = Get.find<OnboardingScreenoneController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "msg_check_your_health".tr,
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
      ),
    );
  }
}
