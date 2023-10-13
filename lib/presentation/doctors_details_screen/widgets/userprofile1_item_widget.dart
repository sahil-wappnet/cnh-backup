import '../controller/doctors_details_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<DoctorsDetailsController>();

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
                Text(
                  "lbl_sujoy".tr,
                  style: CustomTextStyles.bodyMediumBluegray900_1,
                ),
                Obx(
                  () => Text(
                    userprofile1ItemModelObj.userDescription!.value,
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
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 13.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(3.h, 9.v, 4.h, 9.v),
            child: Obx(
              () => Text(
                userprofile1ItemModelObj.fortyseven!.value,
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
