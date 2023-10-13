import 'package:get/get.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../lab_tests_and_doctor_consultant_screen/widgets/userprofileview_item_widget.dart';
import 'controller/lab_tests_and_doctor_consultant_controller.dart';
import 'models/userprofileview_item_model.dart';
import 'package:flutter/material.dart';

class LabTestsAndDoctorConsultantScreen
    extends GetWidget<LabTestsAndDoctorConsultantController> {
  const LabTestsAndDoctorConsultantScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(
                    text: "msg_lab_tests_and_doctor".tr,
                    margin: EdgeInsets.only(left: 6.h))),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 12.v, right: 19.h),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 9.v);
                    },
                    itemCount: controller.labTestsAndDoctorConsultantModelObj
                        .value.userprofileviewItemList.value.length,
                    itemBuilder: (context, index) {
                      UserprofileviewItemModel model = controller
                          .labTestsAndDoctorConsultantModelObj
                          .value
                          .userprofileviewItemList
                          .value[index];
                      return UserprofileviewItemWidget(model);
                    }))),
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
