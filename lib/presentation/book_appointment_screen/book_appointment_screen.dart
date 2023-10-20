import 'package:sahil_s_application2/presentation/payment_page/payment_page.dart';
import 'package:table_calendar/table_calendar.dart';

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
                                            ImageConstant.placeholderImage,
                                        height: 60.adaptSize,
                                        width: 60.adaptSize,
                                        radius: BorderRadius.circular(30.h)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.h, top: 9.v, bottom: 9.v),
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
                                                        margin: EdgeInsets.only(
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
                                                  style:
                                                      theme.textTheme.bodySmall)
                                            ])),
                                  ],
                                ),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVolume,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(
                                        top: 20.v, bottom: 20.v)),
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
                                      borderRadius: BorderRadius.circular(5.h),
                                      border: Border.all(
                                          color: appTheme.blueGray100,
                                          width: 1.h)),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowdown)),
                              hintText: "lbl_general_checkup".tr,
                              items: controller.bookAppointmentModelObj.value
                                  .dropdownItemList.value,
                              contentPadding: EdgeInsets.only(
                                  left: 13.h, top: 15.v, bottom: 15.v),
                              onChanged: (value) {
                                controller.onSelected(value);
                              }),
                          SizedBox(height: 22.v),
                          Text("lbl_select_date".tr,
                              style: theme.textTheme.bodyLarge),
                          SizedBox(height: 5.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 5.v),
                              decoration: AppDecoration.outlineGrayC.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder17),
                              child: TableCalendar(
                                firstDay: DateTime.utc(2010, 10, 16),
                                lastDay: DateTime.utc(2030, 3, 14),
                                focusedDay: DateTime.now(),
                              )),
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
                                Chipview0Am2ItemModel model = controller
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
                            text: "lbl_book_now".tr,
                            onTap: () {
                              Get.to(PaymentPage());
                            },
                          )
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
