import '../controller/home_appointment_controller.dart';
import '../models/slidergeneralch_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SlidergeneralchItemWidget extends StatelessWidget {
  SlidergeneralchItemWidget(
    this.slidergeneralchItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SlidergeneralchItemModel slidergeneralchItemModelObj;

  var controller = Get.find<HomeAppointmentController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "lbl_general_checkup".tr,
                    style: CustomTextStyles.bodyMediumOnPrimary,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgArrowright,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              right: 4.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse186,
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  radius: BorderRadius.circular(
                    17.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_dr_ruhi".tr,
                        style: CustomTextStyles.bodyMediumBluegray900_1,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "msg_heart_specialist6".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  svgPath: ImageConstant.imgMdiclockarrow,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 7.v),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgTdesigndelete,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(
                    left: 22.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 14.v,
              right: 2.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgClock,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_10am_8pm".tr,
                    style: CustomTextStyles.bodyMediumWhiteA700_1,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  svgPath: ImageConstant.imgRicalendarline,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.h, 3.v, 2.h, 4.v),
                  child: Text(
                    "lbl_5_oct_2023".tr,
                    style: CustomTextStyles.bodyMediumWhiteA700_1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
