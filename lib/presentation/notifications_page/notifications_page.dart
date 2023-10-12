import 'controller/notifications_controller.dart';
import 'models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/custom_icon_button.dart';

class NotificationsPage extends StatelessWidget {
  NotificationsPage({Key? key})
      : super(
          key: key,
        );

  NotificationsController controller =
      Get.put(NotificationsController(NotificationsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 175.v,
                  width: 329.h,
                  margin: EdgeInsets.only(
                    left: 15.h,
                    top: 26.v,
                    right: 15.h,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgClose,
                        height: 34.adaptSize,
                        width: 34.adaptSize,
                        alignment: Alignment.bottomLeft,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 37.h),
                              child: Row(
                                children: [
                                  CustomIconButton(
                                    height: 34.adaptSize,
                                    width: 34.adaptSize,
                                    padding: EdgeInsets.all(5.h),
                                    decoration:
                                        IconButtonStyleHelper.fillPrimary,
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgMdiheartoutline,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 11.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_health_tip".tr,
                                            style: CustomTextStyles
                                                .bodyMediumBluegray900_1,
                                          ),
                                          SizedBox(height: 2.v),
                                          Text(
                                            "msg_benefits_of_meditation".tr,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15.v),
                            Divider(),
                            SizedBox(height: 14.v),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                  margin: EdgeInsets.only(bottom: 13.v),
                                  padding: EdgeInsets.all(5.h),
                                  decoration: IconButtonStyleHelper.fillPrimary,
                                  child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgIcoutlinelocaloffer,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 11.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "msg_friday_special_offer".tr,
                                          style: CustomTextStyles
                                              .bodyMediumBluegray900_1,
                                        ),
                                        SizedBox(height: 1.v),
                                        SizedBox(
                                          width: 284.h,
                                          child: Text(
                                            "msg_avail_free_home".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.v),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 5.h,
                                top: 14.v,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgIconoirbirthdaycake,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.symmetric(vertical: 4.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "msg_birthday_greetings".tr,
                                          style: CustomTextStyles
                                              .bodyMediumBluegray900_1,
                                        ),
                                        SizedBox(height: 2.v),
                                        Text(
                                          "msg_wishing_you_a_very".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
