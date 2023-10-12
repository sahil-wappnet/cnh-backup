import 'package:sahil_s_application2/core/app_export.dart';

import '../../../theme/theme_helper.dart';
import '../controller/home_home_care_controller.dart';
import 'package:flutter/material.dart';

import '../models/sliderupcominga2_item_model.dart';

// ignore: must_be_immutable
class Sliderupcominga2ItemWidget extends StatelessWidget {
  Sliderupcominga2ItemWidget(
    this.sliderupcominga2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Sliderupcominga2ItemModel sliderupcominga2ItemModelObj;

  var controller = Get.find<HomeHomeCareController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_upcoming_appointments".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 13.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 11.v,
          ),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 4.h),
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
                            "lbl_malti".tr,
                            style: CustomTextStyles.bodyMedium14,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "msg_nurse_caregiver".tr,
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
                  top: 12.v,
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
        ),
      ],
    );
  }
}
