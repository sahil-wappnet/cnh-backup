import 'package:get/get.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import 'controller/appointment_page_controller.dart';

import 'package:flutter/material.dart';

class AppointmentPageScreen extends GetWidget<AppointmentPageController> {
  const AppointmentPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          CustomAppBar(
              title: AppbarTitle(
                  text: "msg_your_appointment".tr,
                  margin: EdgeInsets.only(left: 7.h)),
              actions: [
                AppbarImage1(
                    svgPath: ImageConstant.imgMdibellnotificationoutline,
                    onTap: () {
                      onTapMdibellnotifica();
                    })
              ]),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(left: 10.h, right: 10.h, bottom: 5.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.h, vertical: 5.v),
                      decoration: AppDecoration.outlineGrayC.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder17),
                      child: TableCalendar(
                        firstDay: DateTime.utc(2010, 10, 16),
                        lastDay: DateTime.utc(2030, 3, 14),
                        focusedDay: DateTime.now(),
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 8.h, top: 37.v),
                      child: Text("msg_your_appointment".tr,
                          style: theme.textTheme.bodyLarge
                              ?.copyWith(fontSize: 16))),
                  SizedBox(height: 34.v),
                  Row(
                    children: [
                      Column(children: [
                        Text("lbl_10_am".tr, style: theme.textTheme.bodyMedium),
                        SizedBox(height: 134.v),
                        Text("lbl_11_am".tr, style: theme.textTheme.bodyMedium),
                        SizedBox(height: 132.v),
                        Text("lbl_12_pm".tr, style: theme.textTheme.bodyMedium)
                      ]),
                      Container(
                        height: 304.v,
                        width: 10.h,
                        margin:
                            EdgeInsets.only(left: 18.h, top: 5.v, bottom: 4.v),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(5.h),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(5.h),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(5.h),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 293.v,
                                child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                    color: theme.colorScheme.primary),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapStackarrowright();
                        },
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.only(
                              left: 7.h, top: 6.v, bottom: 183.v),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: appTheme.blueGray100, width: 1.h),
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Container(
                            height: 124.v,
                            width: 254.h,
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(top: 10.v),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    height: 96.v,
                                    width: 232.h,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: SizedBox(
                                            height: 96.v,
                                            width: 140.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .placeholderImage,
                                                  height: 34.adaptSize,
                                                  width: 34.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      17.h),
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 4.h),
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                            "lbl_dr_ruhi".tr,
                                                            style: CustomTextStyles
                                                                .bodyMedium14),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 4.v,
                                                                right: 6.h),
                                                        child: Text(
                                                            "msg_heart_specialist6"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall),
                                                      ),
                                                      SizedBox(height: 7.v),
                                                      Text(
                                                          "lbl_regular_checkup"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .bodySmall),
                                                      SizedBox(height: 15.v),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                            "lbl_10_am_11_am"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 23.v),
                                            child: SizedBox(
                                              width: 232.h,
                                              child: Divider(),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  onTapMdibellnotifica() {
    Get.toNamed(
      AppRoutes.notificationsTabContainerScreen,
    );
  }

  onTapStackarrowright() {
    Get.toNamed(
      AppRoutes.bookedAppointmentScreen,
    );
  }
}
