import '../previous_appointments_screen/widgets/userprofile2_item_widget.dart';
import 'controller/previous_appointments_controller.dart';
import 'models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';

class PreviousAppointmentsScreen
    extends GetWidget<PreviousAppointmentsController> {
  const PreviousAppointmentsScreen({Key? key}) : super(key: key);

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
            title: AppbarSubtitle(
                text: "msg_previous_appointments".tr,
                margin: EdgeInsets.only(left: 10.h)),
            actions: [
              AppbarImage1(
                  svgPath: ImageConstant.imgMdibellnotificationoutline,
                  )
            ]),
        body: Padding(
            padding: EdgeInsets.only(left: 16.h, top: 7.v, right: 16.h),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0.v),
                      child: SizedBox(
                          width: 328.h,
                          child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.blueGray100)));
                },
                itemCount: controller.previousAppointmentsModelObj.value
                    .userprofile2ItemList.value.length,
                itemBuilder: (context, index) {
                  Userprofile2ItemModel model = controller
                      .previousAppointmentsModelObj
                      .value
                      .userprofile2ItemList
                      .value[index];
                  return Userprofile2ItemWidget(model);
                }))),
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
