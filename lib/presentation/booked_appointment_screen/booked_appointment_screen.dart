import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';

import '../../widgets/custom_text_form_field.dart';
import 'controller/booked_appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

class BookedAppointmentScreen extends GetWidget<BookedAppointmentController> {
  const BookedAppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        appBar: CustomAppBar(
            leadingWidth: 25.h,
            leading: AppbarImage(
                svgPath: ImageConstant.imgArrowleft,
                
                onTap: () {
                  onTapArrowleftone();
                }),
            title: AppbarTitle(
                text: "msg_your_appointment".tr,
                margin: EdgeInsets.only(left: 10.h)),
            actions: [
              AppbarImage1(
                  svgPath: ImageConstant.imgMdibellnotificationoutline,
                  )
            ]),
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.v),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse260x60,
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          radius: BorderRadius.circular(30.h)),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 10.h, top: 9.v, bottom: 9.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text("lbl_dr_ruhi".tr,
                                      style: CustomTextStyles
                                          .bodyLargeBluegray900_1),
                                  CustomElevatedButton(
                                      height: 18.v,
                                      width: 40.h,
                                      text: "lbl_4_7".tr,
                                      margin: EdgeInsets.only(left: 9.h),
                                      leftIcon: Container(
                                          margin: EdgeInsets.only(right: 3.h),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgStar)),
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimary,
                                      buttonTextStyle:
                                          CustomTextStyles.bodySmallWhiteA700)
                                ]),
                                SizedBox(height: 6.v),
                                Text("msg_heart_specialist".tr,
                                    style: theme.textTheme.bodySmall)
                              ])),
                      CustomImageView(
                          svgPath: ImageConstant.imgVolume,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                              left: 19.h, top: 20.v, bottom: 20.v)),
                      CustomImageView(
                          svgPath: ImageConstant.imgFluentcall32regular,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                              left: 24.h, top: 20.v, bottom: 20.v))
                    ]),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.only(
                                left: 14.h, top: 18.v, right: 14.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.h, vertical: 6.v),
                            decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder5),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
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
                                      svgPath:
                                          ImageConstant.imgRicalendarline,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          10.h, 3.v, 1.h, 4.v),
                                      child: Text("lbl_5_oct_2023".tr,
                                          style: CustomTextStyles
                                              .bodyMediumWhiteA700_1))
                                ]))),
                    SizedBox(height: 36.v),
                    Text("lbl_upload_reports".tr,
                        style: theme.textTheme.bodyLarge),
                    SizedBox(height: 14.v),
                    Text("msg_upload_your_reports".tr,
                        style: theme.textTheme.bodySmall),
                    Container(
                        margin: EdgeInsets.only(top: 11.v, right: 3.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 143.h, vertical: 23.v),
                        decoration: AppDecoration.outlineBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgTdesignupload,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              SizedBox(height: 7.v),
                              Text("lbl_upload".tr,
                                  style: theme.textTheme.bodySmall)
                            ])),
                    SizedBox(height: 28.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: CustomElevatedButton(
                                  text: "lbl_cancel".tr,
                                  margin: EdgeInsets.only(right: 6.h))),
                          Expanded(
                              child: CustomElevatedButton(
                                  text: "lbl_reschedule".tr,
                                  margin: EdgeInsets.only(left: 6.h)))
                        ]),
                    SizedBox(height: 5.v),Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 24.v,
                          ),
                          child: Text(
                            "msg_previous_appointments".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        CustomTextFormField(
                          controller: controller.arrowrightController,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            top: 13.v,
                          ),
                          hintText: "lbl_appointments".tr,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                            padding: EdgeInsets.fromLTRB(30.h, 14.v, 11.h, 15.v),
                            margin: EdgeInsets.only(),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                5.h,
                              ),
                              border: Border.all(
                                color: appTheme.blueGray100,
                                width: 1.h,
                              ),
                            ),
                            child: CustomImageView(
                              onTap: (){
                                Get.toNamed(AppRoutes.previousAppointmentsScreen);
                              },
                              svgPath: ImageConstant.imgArrowright,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: 50.v,
                          ),
                          contentPadding: EdgeInsets.only(
                            left: 13.h,
                            top: 15.v,
                            bottom: 15.v,
                          ),
                        ),
                        SizedBox(height: 29.v),
                        CustomElevatedButton(
                          text: "lbl_schedule_new".tr,
                        ),
                  ]),
            )),
       );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
