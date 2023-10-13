import 'package:sahil_s_application2/core/app_export.dart';

import '../controller/all_health_record_controller.dart';
import '../models/ecgreport1_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Ecgreport1ItemWidget extends StatelessWidget {
  Ecgreport1ItemWidget(
    this.ecgreport1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Ecgreport1ItemModel ecgreport1ItemModelObj;

  var controller = Get.find<AllHealthRecordController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.outlineBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgBifilepdf,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 4.v),
                ),
                Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 1.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Obx(
                      () => Text(
                        ecgreport1ItemModelObj.ecgReportText!.value,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                  Obx(
                    () => Text(
                      ecgreport1ItemModelObj.dateText!.value,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
              ],
            ),
            
            CustomImageView(
              svgPath: ImageConstant.imgSearch,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(
                top: 7.v,
                bottom: 4.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
