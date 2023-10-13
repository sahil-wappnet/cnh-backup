import 'package:get/get.dart';
import 'package:sahil_s_application2/core/app_export.dart';

import '../controller/lab_tests_and_doctor_consultant_controller.dart';
import '../models/userprofileview_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileviewItemWidget extends StatelessWidget {
  UserprofileviewItemWidget(
    this.userprofileviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileviewItemModel userprofileviewItemModelObj;

  var controller = Get.find<LabTestsAndDoctorConsultantController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.v,
      width: 325.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 13.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgBifilepdf,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      top: 2.v,
                      bottom: 4.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Obx(
                            () => Text(
                              userprofileviewItemModelObj.ecgReportText!.value,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                        Obx(
                          () => Text(
                            userprofileviewItemModelObj.dateText!.value,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: ImageConstant.imgSearch,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 5.v),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 55.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              // child: CustomImageView(
              //   svgPath: ImageConstant.imgMaterialsymbolPrimary,
              //   height: 20.adaptSize,
              //   width: 20.adaptSize,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
