import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

import '../controller/previous_appointments_controller.dart';
import '../models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  var controller = Get.find<PreviousAppointmentsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.placeholderImage,
              height: 34.adaptSize,
              width: 34.adaptSize,
              radius: BorderRadius.circular(
                17.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      userprofile2ItemModelObj.userName!.value,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBluegray900_1,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Obx(
                    () => Text(
                      userprofile2ItemModelObj.userSpecialty!.value,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              svgPath: ImageConstant.imgCheckmarkTeal700,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(
                top: 9.v,
                bottom: 8.v,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.v,
        ),
        Row(
          children: [
            CustomElevatedButton(
                text: 'lbl_receipt'.tr,
                width: mediaQueryData.size.width / 2.27,
                leftIcon: Container(
                    margin: EdgeInsets.only(right: 10.h),
                    child: CustomImageView(
                        svgPath: ImageConstant.imgMaterialsymbol))),
            SizedBox(
              width: 10.v,
            ),
            CustomElevatedButton(
              text: 'lbl_prescription'.tr,
              width: mediaQueryData.size.width / 2.27,
              leftIcon: Container(
                    margin: EdgeInsets.only(right: 10.h),
                    child: CustomImageView(
                        svgPath: ImageConstant.imgMaterialsymbol))
            )
          ],
        ),
        SizedBox(
          height: 10.v,
        ),
      ],
    );
  }
}
