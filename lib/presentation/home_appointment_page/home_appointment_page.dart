import '../home_appointment_page/widgets/slidergeneralch_item_widget.dart';
import 'controller/home_appointment_controller.dart';
import 'models/home_appointment_model.dart';
import 'models/slidergeneralch_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:sahil_s_application2/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeAppointmentPage extends StatelessWidget {
  HomeAppointmentPage({Key? key})
      : super(
          key: key,
        );

  HomeAppointmentController controller =
      Get.put(HomeAppointmentController(HomeAppointmentModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 24.v,
                    right: 19.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_upload_reports".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 14.v),
                      Text(
                        "msg_upload_your_reports".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 11.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 143.h,
                          vertical: 23.v,
                        ),
                        decoration: AppDecoration.outlineBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgTdesignupload,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            SizedBox(height: 7.v),
                            Text(
                              "lbl_upload".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.v),
                      Text(
                        "msg_upcoming_appointments".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 13.v),
                      Text(
                        "msg_upload_your_reports".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 11.v),
                      Obx(
                        () => CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 151.v,
                            initialPage: 0,
                            autoPlay: true,
                            viewportFraction: 1.0,
                            enableInfiniteScroll: false,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (
                              index,
                              reason,
                            ) {
                              controller.sliderIndex.value = index;
                            },
                          ),
                          itemCount: controller.homeAppointmentModelObj.value
                              .slidergeneralchItemList.value.length,
                          itemBuilder: (context, index, realIndex) {
                            SlidergeneralchItemModel model = controller
                                .homeAppointmentModelObj
                                .value
                                .slidergeneralchItemList
                                .value[index];
                            return SlidergeneralchItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 17.v),
                      Align(
                        alignment: Alignment.center,
                        child: Obx(
                          () => SizedBox(
                            height: 2.v,
                            child: AnimatedSmoothIndicator(
                              activeIndex: controller.sliderIndex.value,
                              count: controller.homeAppointmentModelObj.value
                                  .slidergeneralchItemList.value.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 7,
                                activeDotColor: theme.colorScheme.primary,
                                dotColor: appTheme.blueGray100,
                                dotHeight: 2.v,
                                dotWidth: 15.h,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
