import 'package:sahil_s_application2/presentation/payment_page/payment_page.dart';

import '../book_appointment_screen/widgets/chipview0_am2_item_widget.dart';
import 'controller/book_appointment_controller.dart';
import 'models/chipview0_am2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_drop_down.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BookAppointmentScreen extends GetWidget<BookAppointmentController> {
  const BookAppointmentScreen({Key? key}) : super(key: key);

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
                    margin: EdgeInsets.only(left: 10.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMdibellnotificationoutline,
                      )
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 7.v),
                  Expanded(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.symmetric(horizontal: 15.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse260x60,
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          radius: BorderRadius.circular(30.h)),
                                      Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.h,
                                          top: 9.v,
                                          bottom: 9.v),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(children: [
                                              Text("lbl_dr_ruhi".tr,
                                                  style: CustomTextStyles
                                                      .bodyLargeBluegray900_1),
                                              CustomElevatedButton(
                                                  height: 18.v,
                                                  width: 40.h,
                                                  text: "lbl_4_7".tr,
                                                  margin: EdgeInsets.only(
                                                      left: 9.h),
                                                  leftIcon: Container(
                                                      margin:
                                                          EdgeInsets.only(
                                                              right: 3.h),
                                                      child: CustomImageView(
                                                          svgPath:
                                                              ImageConstant
                                                                  .imgStar)),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillPrimary,
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .bodySmallWhiteA700)
                                            ]),
                                            SizedBox(height: 6.v),
                                            Text("msg_heart_specialist".tr,
                                                style: theme
                                                    .textTheme.bodySmall)
                                          ])),
                                  
                                    ],
                                  ),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgVolume,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 20.v,
                                          bottom: 20.v)),
                                  
                                ]),
                                SizedBox(height: 22.v),
                                Text("lbl_select_problem".tr,
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(height: 15.v),
                                CustomDropDown(
                                    icon: Container(
                                        padding: EdgeInsets.fromLTRB(
                                            30.h, 15.v, 13.h, 15.v),
                                        margin: EdgeInsets.only(),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.h),
                                            border: Border.all(
                                                color: appTheme.blueGray100,
                                                width: 1.h)),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowdown)),
                                    hintText: "lbl_general_checkup".tr,
                                    items: controller
                                        .bookAppointmentModelObj
                                        .value
                                        .dropdownItemList.value,
                                    contentPadding: EdgeInsets.only(
                                        left: 13.h,
                                        top: 15.v,
                                        bottom: 15.v),
                                    onChanged: (value) {
                                      controller.onSelected(value);
                                    }),
                                SizedBox(height: 22.v),
                                Text("lbl_select_date".tr,
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(height: 15.v),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.h, vertical: 23.v),
                                    decoration: AppDecoration.outlineGrayC
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder17),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(children: [
                                            Text(
                                                "lbl_october_2023"
                                                    .tr
                                                    .toUpperCase(),
                                                style: CustomTextStyles
                                                    .titleSmallPrimary),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgIcons,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgIconsOnprimarycontainer,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize,
                                                margin: EdgeInsets.only(
                                                    left: 24.h))
                                          ]),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 20.v),
                                              child: Divider(
                                                  color: appTheme.gray300,
                                                  indent: 5.h,
                                                  endIndent: 4.h)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 4.h,
                                                  top: 19.v,
                                                  right: 5.h),
                                              child: Row(children: [
                                                Text(
                                                    "lbl_mon"
                                                        .tr
                                                        .toUpperCase(),
                                                    style: theme.textTheme
                                                        .labelMedium),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 16.h),
                                                    child: Text(
                                                        "lbl_tue"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .labelMedium)),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 16.h),
                                                    child: Text(
                                                        "lbl_wed"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .labelMedium)),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 16.h),
                                                    child: Text(
                                                        "lbl_thu"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .labelMedium)),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 21.h),
                                                    child: Text(
                                                        "lbl_fri"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .labelMedium)),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 22.h),
                                                    child: Text(
                                                        "lbl_sat"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .labelMedium)),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 18.h),
                                                    child: Text(
                                                        "lbl_sun"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .labelMedium))
                                              ])),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.h,
                                                      top: 19.v,
                                                      right: 8.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical: 3
                                                                        .v),
                                                            child: Text(
                                                                "lbl_1"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall)),
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .only(
                                                                    left: 32
                                                                        .h,
                                                                    top:
                                                                        3.v,
                                                                    bottom: 3
                                                                        .v),
                                                            child: Text(
                                                                "lbl_2"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall)),
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .only(
                                                                    left: 30
                                                                        .h,
                                                                    top:
                                                                        3.v,
                                                                    bottom: 3
                                                                        .v),
                                                            child: Text(
                                                                "lbl_3"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall)),
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .only(
                                                                    left: 30
                                                                        .h,
                                                                    top:
                                                                        3.v,
                                                                    bottom: 3
                                                                        .v),
                                                            child: Text(
                                                                "lbl_4"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall)),
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 22
                                                                        .h),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        7.h,
                                                                    vertical: 3
                                                                        .v),
                                                            decoration: AppDecoration
                                                                .fillPrimary
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder12),
                                                            child: Text(
                                                                "lbl_5"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                style: CustomTextStyles
                                                                    .titleSmallGray5001)),
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .only(
                                                                    left: 22
                                                                        .h,
                                                                    top:
                                                                        3.v,
                                                                    bottom: 3
                                                                        .v),
                                                            child: Text(
                                                                "lbl_6"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall)),
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .only(
                                                                    left: 30
                                                                        .h,
                                                                    top:
                                                                        3.v,
                                                                    bottom: 3
                                                                        .v),
                                                            child: Text(
                                                                "lbl_7"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall))
                                                      ]))),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 7.h,
                                                  top: 19.v,
                                                  right: 3.h),
                                              child: Row(children: [
                                                Text(
                                                    "lbl_8"
                                                        .tr
                                                        .toUpperCase(),
                                                    style: theme.textTheme
                                                        .titleSmall),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 30.h),
                                                    child: Text(
                                                        "lbl_9"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall)),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 26.h),
                                                    child: Text(
                                                        "lbl_10"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall)),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 24.h),
                                                    child: Text(
                                                        "lbl_11"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall)),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 26.h),
                                                    child: Text(
                                                        "lbl_12"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall)),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 24.h),
                                                    child: Text(
                                                        "lbl_13"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall)),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 23.h),
                                                    child: Text(
                                                        "lbl_14"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall))
                                              ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 4.h,
                                                  top: 22.v,
                                                  right: 5.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                        "lbl_15"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall),
                                                    Text(
                                                        "lbl_16"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall),
                                                    Text(
                                                        "lbl_17"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall),
                                                    Text(
                                                        "lbl_18"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall),
                                                    Text(
                                                        "lbl_19"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall),
                                                    Text(
                                                        "lbl_20"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall),
                                                    Text(
                                                        "lbl_21"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall)
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 3.h,
                                                  top: 22.v,
                                                  right: 3.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                        "lbl_22"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall),
                                                    Text(
                                                        "lbl_23"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall),
                                                    Text(
                                                        "lbl_24"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall),
                                                    Text(
                                                        "lbl_25"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall),
                                                    Text(
                                                        "lbl_26"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall),
                                                    Text(
                                                        "lbl_27"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall),
                                                    Text(
                                                        "lbl_28"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall)
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 3.h,
                                                  top: 22.v,
                                                  bottom: 3.v),
                                              child: Row(children: [
                                                Text(
                                                    "lbl_29"
                                                        .tr
                                                        .toUpperCase(),
                                                    style: theme.textTheme
                                                        .titleSmall),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 21.h),
                                                    child: Text(
                                                        "lbl_30"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall)),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.only(
                                                            left: 22.h),
                                                    child: Text(
                                                        "lbl_31"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme
                                                            .textTheme
                                                            .titleSmall))
                                              ]))
                                        ])),
                                SizedBox(height: 22.v),
                                Text("lbl_select_time".tr,
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(height: 15.v),
                                Obx(() => Wrap(
                                    runSpacing: 18.v,
                                    spacing: 18.h,
                                    children: List<Widget>.generate(
                                        controller
                                            .bookAppointmentModelObj
                                            .value
                                            .chipview0Am2ItemList
                                            .value
                                            .length, (index) {
                                      Chipview0Am2ItemModel model =
                                          controller
                                              .bookAppointmentModelObj
                                              .value
                                              .chipview0Am2ItemList
                                              .value[index];
                                      return Chipview0Am2ItemWidget(model);
                                    }))),
                                SizedBox(height: 15.v),
                                Center(
                                  child: SizedBox(
                                      height: 2.v,
                                      child: AnimatedSmoothIndicator(
                                          activeIndex: 0,
                                          count: 3,
                                          effect: ScrollingDotsEffect(
                                              spacing: 7,
                                              activeDotColor:
                                                  theme.colorScheme.primary,
                                              dotColor: appTheme.blueGray100,
                                              dotHeight: 2.v,
                                              dotWidth: 15.h))),
                                ),
                                SizedBox(height: 15.v),
                                CustomElevatedButton(
                                    text: "lbl_book_now".tr, onTap: (){
                                      Get.to(PaymentPage());
                                    },)
                              ])))
                ])),
            ));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
