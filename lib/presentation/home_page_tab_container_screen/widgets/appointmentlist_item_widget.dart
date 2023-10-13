import '../controller/home_page_tab_container_controller.dart';
import '../models/appointmentlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class AppointmentlistItemWidget extends StatelessWidget {
  AppointmentlistItemWidget(
    this.appointmentlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AppointmentlistItemModel appointmentlistItemModelObj;

  var controller = Get.find<HomePageTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_upcoming_appointments".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 10.v),
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.v,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Text(
                "lbl_10_oct".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge,
              ),
            ),
            Container(
              height: 80.v,
              width: mediaQueryData.size.width/1.35,
              margin: EdgeInsets.only(left: 10.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowrightPrimary,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 10.h),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 9.h,
                        vertical: 8.v,
                      ),
                      decoration: AppDecoration.outlineBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "lbl_dr_britto".tr,
                              style: CustomTextStyles.bodyMediumBluegray90014,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 1.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "msg_heart_specialist5".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgPhclock,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "msg_10_30am_12_30pm".tr,
                                  style: theme.textTheme.bodySmall,
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
            ),
          ],
        ),
      ],
    );
  }
}
