import '../controller/onboarding_screenthree_controller.dart';
import '../models/sliderbookcareg_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SliderbookcaregItemWidget extends StatelessWidget {
  SliderbookcaregItemWidget(
    this.sliderbookcaregItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderbookcaregItemModel sliderbookcaregItemModelObj;

  var controller = Get.find<OnboardingScreenthreeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "lbl_book_caregivers".tr,
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
