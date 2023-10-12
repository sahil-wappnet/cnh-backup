import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';

import '../caregiver_details_page/widgets/userprofilerow_item_widget.dart';
import 'controller/caregiver_details_controller.dart';
import 'models/caregiver_details_model.dart';
import 'models/userprofilerow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:sahil_s_application2/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class CaregiverDetailsPage extends StatelessWidget {
  CaregiverDetailsPage({Key? key}) : super(key: key);

  CaregiverDetailsController controller =
      Get.put(CaregiverDetailsController(CaregiverDetailsModel().obs));

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
                text: "msg_book_appointment".tr,
                margin: EdgeInsets.only(left: 6.h)),
            actions: [
              AppbarImage1(
                svgPath: ImageConstant.imgMdibellnotificationoutline,
              )
            ]),
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 7.v),
              SizedBox(
                  height: 60.v,
                  width: mediaQueryData.size.width,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    CustomImageView(
                                  imagePath: ImageConstant.imgEllipse187,
                                  height: 60.adaptSize,
                                  width: 60.adaptSize,
                                  radius: BorderRadius.circular(30.h)),
                    SizedBox(width: 10.v,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("lbl_sujata".tr,
                                style:
                                    CustomTextStyles.bodyLargeBluegray900_1),
                            SizedBox(width: 10.v,),
                            CustomElevatedButton(
                                            height: 18.v,
                                            width: 40.h,
                                            text: "lbl_4_5".tr,
                                            margin:
                                                EdgeInsets.only(right: 42.h),
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
                        SizedBox(height: 04.v,),
                        Text("msg_nurse_11_years".tr,
                                            style: theme.textTheme.bodySmall)
                      ],
                    ),
                    CustomImageView(
                                  svgPath: ImageConstant.imgVolume,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 48.h, top: 20.v, bottom: 20.v)),
                              // CustomImageView(
                              //     svgPath: ImageConstant.imgFluentcall32regular,
                              //     height: 20.adaptSize,
                              //     width: 20.adaptSize,
                              //     margin: EdgeInsets.only(
                              //         left: 24.h, top: 20.v, bottom: 20.v)),
                    
                  ])),
              SizedBox(height: 24.v),
              Text("lbl_biography".tr, style: theme.textTheme.bodyLarge),
              Container(
                  width: 310.h,
                  margin: EdgeInsets.only(top: 12.v, right: 17.h),
                  child: Text("msg_lorem_ipsum_is_simply".tr,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium)),
              SizedBox(height: 21.v),
              Text("lbl_availability".tr, style: theme.textTheme.bodyLarge),
              SizedBox(height: 13.v),
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
                            padding:
                                EdgeInsets.fromLTRB(21.h, 13.v, 26.h, 13.v),
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
                                      child: Text("lbl_6_oct_2023".tr,
                                          style: CustomTextStyles
                                              .bodyMediumWhiteA700_1))
                                ])))
                  ])),
              SizedBox(height: 24.v),
              Text("lbl_caretaking_fees".tr, style: theme.textTheme.bodyLarge),
              CustomOutlinedButton(
                  text: "msg_caretaking_fees".tr,
                  margin: EdgeInsets.only(top: 13.v, right: 8.h)),
              SizedBox(height: 22.v),
              Text("lbl_reviews".tr, style: theme.textTheme.bodyLarge),
              Padding(
                  padding: EdgeInsets.only(top: 15.v, right: 8.h),
                  child: Obx(() => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 1.v);
                      },
                      itemCount: controller.caregiverDetailsModelObj.value
                          .userprofilerowItemList.value.length,
                      itemBuilder: (context, index) {
                        UserprofilerowItemModel model = controller
                            .caregiverDetailsModelObj
                            .value
                            .userprofilerowItemList
                            .value[index];
                        return UserprofilerowItemWidget(model);
                      }))),
              SizedBox(
                height: 15.v,
              ),
              CustomElevatedButton(
                text: "lbl_book_now".tr,
                onTap: () {},
              )
            ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
