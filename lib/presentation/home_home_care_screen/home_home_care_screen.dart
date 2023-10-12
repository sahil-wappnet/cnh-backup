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

    return SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 10.v),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10.v),
              Text(
                "lbl_specialization".tr,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 10.v),
              SizedBox(
                height: 77.v,
                width: double.maxFinite,
                child: Column(
                  // alignment: Alignment.centerRight,
                  children: [
                    Row(
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
                                  color:Color(0XFFFFFFFF),
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
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Text(
                "lbl_top_caregivers".tr,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 13.v),
              SizedBox(
                height: 442.v,
                width: mediaQueryData.size.width,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ListView.builder(
                      itemCount: 4,
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
                                  imagePath: ImageConstant.imgEllipse187,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                margin:
                                                    EdgeInsets.only(right: 3.h),
                                                child: CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar)),
                                            buttonStyle:
                                                CustomButtonStyles.fillPrimary,
                                            buttonTextStyle: CustomTextStyles
                                                .bodySmallWhiteA700),
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
              ),
            ]));
  }
}
