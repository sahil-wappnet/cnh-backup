import '../controller/caregiver_details_controller.dart';
import '../models/userprofilerow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilerowItemWidget extends StatelessWidget {
  UserprofilerowItemWidget(
    this.userprofilerowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilerowItemModel userprofilerowItemModelObj;

  var controller = Get.find<CaregiverDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.placeholderImage,
            height: 34.adaptSize,
            width: 34.adaptSize,
            radius: BorderRadius.circular(
              17.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofilerowItemModelObj.userName!.value,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumBluegray900_1,
                  ),
                ),
                Obx(
                  () => Text(
                    userprofilerowItemModelObj.userDescription!.value,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgStarPrimary,
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(3.h, 9.v, 4.h, 9.v),
            child: Obx(
              () => Text(
                userprofilerowItemModelObj.userRatingText!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
