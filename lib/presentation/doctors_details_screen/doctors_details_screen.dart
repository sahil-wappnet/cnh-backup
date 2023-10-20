import 'controller/doctors_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:sahil_s_application2/widgets/custom_outlined_button.dart';

class DoctorsDetailsScreen extends GetWidget<DoctorsDetailsController> {
  const DoctorsDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
          leadingWidth: 25.h,
          leading: AppbarImage(
              svgPath: ImageConstant.imgArrowleft,
              onTap: () {
                onTapArrowleftone();
              }),
          title: AppbarSubtitle(
            text: "msg_book_appointment".tr,
            margin: EdgeInsets.only(left: 10.v),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgMdibellnotificationoutline,
            )
          ]),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                CustomImageView(
                    imagePath: ImageConstant.placeholderImage,
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                    radius: BorderRadius.circular(30.h)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.v),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_dr_ruhi".tr,
                              style: CustomTextStyles.bodyLargeBluegray900_1),
                          CustomElevatedButton(
                              height: 18.v,
                              width: 40.h,
                              text: "lbl_4_7".tr,
                              margin: EdgeInsets.only(left: 10.v),
                              leftIcon: Container(
                                  margin: EdgeInsets.only(right: 3.h),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgStar)),
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              buttonTextStyle:
                                  CustomTextStyles.bodySmallWhiteA700),
                        ],
                      ),
                      SizedBox(
                        height: 5.v,
                      ),
                      Text("msg_heart_specialist".tr,
                          style: theme.textTheme.bodySmall),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                    svgPath: ImageConstant.imgVolume,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 20.v)),
                SizedBox(
                  width: 12.h,
                )
              ],
            ),
            SizedBox(height: 20.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("lbl_biography".tr, style: theme.textTheme.bodyLarge),
              ],
            ),
            Container(
                width: 310.h,
                margin: EdgeInsets.only(top: 12.v, right: 13.h),
                child: Text("msg_lorem_ipsum_is_simply".tr,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium)),
            SizedBox(height: 20.v),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  svgPath: ImageConstant.imgRihospitalline,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.only(bottom: 12.v)),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 10.h),
                      child: Text("msg_patel_hospital_sola".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium)))
            ]),
            SizedBox(height: 15.v),
            Text("lbl_availability".tr, style: theme.textTheme.bodyLarge),
            SizedBox(height: 15.v),
            SizedBox(
                height: 50.v,
                width: 321.h,
                child: Stack(alignment: Alignment.centerRight, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 50.v,
                          width: 150.h,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(5.h)))),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          height: 50.v,
                          width: 150.h,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(5.h)))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(21.h, 13.v, 26.h, 13.v),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClock,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.h, top: 4.v, bottom: 3.v),
                                    child: Text("lbl_10am_8pm".tr,
                                        style: CustomTextStyles
                                            .bodyMediumWhiteA700_1)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgRicalendarline,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.h, top: 3.v, bottom: 4.v),
                                    child: Text("lbl_5_oct_2023".tr,
                                        style: CustomTextStyles
                                            .bodyMediumWhiteA700_1))
                              ])))
                ])),
            SizedBox(height: 15.v),
            Text("lbl_consulting_fees".tr, style: theme.textTheme.bodyLarge),
            SizedBox(height: 15.v),
            CustomOutlinedButton(text: "msg_doctor_s_fees".tr),
            SizedBox(height: 15.v),
            Text("lbl_reviews".tr, style: theme.textTheme.bodyLarge),
            SizedBox(height: 15.v),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.v),
                decoration: AppDecoration.outlineBlueGray
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.placeholderImage,
                          height: 34.adaptSize,
                          width: 34.adaptSize,
                          radius: BorderRadius.circular(17.h)),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_sujoy".tr,
                                    style: CustomTextStyles.bodyMedium14),
                                Text("lbl_nice_doctor".tr,
                                    style: theme.textTheme.bodyMedium)
                              ])),
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgStarPrimary,
                          height: 11.v,
                          width: 10.h,
                          margin: EdgeInsets.only(top: 9.v, bottom: 13.v)),
                      Padding(
                          padding: EdgeInsets.fromLTRB(3.h, 8.v, 4.h, 10.v),
                          child: Text("lbl_4_7".tr,
                              style: theme.textTheme.bodySmall))
                    ])),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.v),
                decoration: AppDecoration.outlineBlueGray
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderBL5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.placeholderImage,
                          height: 34.adaptSize,
                          width: 34.adaptSize,
                          radius: BorderRadius.circular(17.h),
                          margin: EdgeInsets.only(bottom: 2.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h, bottom: 1.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_sujoy".tr,
                                    style: CustomTextStyles.bodyMedium14),
                                Text("msg_well_experienced".tr,
                                    style: theme.textTheme.bodyMedium)
                              ])),
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgStarPrimary,
                          height: 11.v,
                          width: 10.h,
                          margin: EdgeInsets.only(top: 9.v, bottom: 15.v)),
                      Padding(
                          padding: EdgeInsets.fromLTRB(3.h, 8.v, 4.h, 12.v),
                          child: Text("lbl_4_8".tr,
                              style: theme.textTheme.bodySmall))
                    ])),
            SizedBox(height: 15.v),
            CustomElevatedButton(
              text: "lbl_book_now".tr,
              onTap: () {
                Get.toNamed(AppRoutes.bookAppointmentScreen);
              },
            )
          ])),
    ));
  }

  onTapArrowleftone() {
    Get.back();
  }
}
