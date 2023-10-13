import 'package:sahil_s_application2/presentation/caregiver_details_page/caregiver_details_page.dart';

import '../../widgets/custom_elevated_button.dart';
import 'controller/home_home_care_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomeHomeCareScreen extends GetWidget<HomeHomeCareController> {
  const HomeHomeCareScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return ListView(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 10.v, vertical: 10.v),
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "lbl_specialization".tr,
            textAlign: TextAlign.left,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 10.v),
          SizedBox(
            height: 77.v,
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 77.v,
                  width: mediaQueryData.size.width / 2.2,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                    border: Border.all(
                      color: appTheme.blueGray100,
                      width: 1.h,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_nurse".tr,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: Color(0XFFFFFFFF),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgFa6solidusernurse,
                        height: 50.v,
                        width: 43.h,
                        margin: EdgeInsets.only(
                          left: 28.h,
                          top: 13.v,
                          bottom: 14.v,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 77.v,
                  width: mediaQueryData.size.width / 2.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                    border: Border.all(
                      color: appTheme.blueGray100,
                      width: 1.h,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_physio".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgMapphysiotherapist,
                        height: 50.v,
                        width: 43.h,
                        margin: EdgeInsets.only(
                          left: 28.h,
                          top: 13.v,
                          bottom: 14.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Text(
            "msg_upcoming_appointments".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 15.v),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12.v, horizontal: 12.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5.h,
              ),
              border: Border.all(
                color: appTheme.blueGray100,
                width: 1.h,
              ),
            ),
            child: Column(
              children: [
                Row(
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
                      padding: EdgeInsets.only(left: 11.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'lbl_malti'.tr,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBluegray900_1,
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            'msg_nurse_caregiver'.tr,
                            overflow: TextOverflow.ellipsis,
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
                    // CustomImageView(
                    //   svgPath: ImageConstant.imgCheckmarkTeal700,
                    //   height: 16.adaptSize,
                    //   width: 16.adaptSize,
                    //   margin: EdgeInsets.only(
                    //     top: 9.v,
                    //     bottom: 8.v,
                    //   ),
                    // ),
                  ],
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
          SizedBox(height: 15.v),
          Text(
            "lbl_top_caregivers".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 15.v),
          SizedBox(
            width: mediaQueryData.size.width,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(CaregiverDetailsPage());
                    },
                    child: SizedBox(
                      height: 60.v,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.placeholderImage,
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            radius: BorderRadius.circular(
                              17.h,
                            ),
                          ),
                          SizedBox(
                            width: 10.v,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_sujata".tr,
                                    style: CustomTextStyles.bodyMedium14,
                                  ),
                                  CustomElevatedButton(
                                      height: 18.v,
                                      width: 40.h,
                                      text: "lbl_4_7".tr,
                                      margin: EdgeInsets.only(left: 10.v),
                                      leftIcon: Container(
                                          margin: EdgeInsets.only(right: 3.h),
                                          child: CustomImageView(
                                              svgPath: ImageConstant.imgStar)),
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimary,
                                      buttonTextStyle:
                                          CustomTextStyles.bodySmallWhiteA700),
                                ],
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "msg_10_years_experience".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ]);
  }
}
