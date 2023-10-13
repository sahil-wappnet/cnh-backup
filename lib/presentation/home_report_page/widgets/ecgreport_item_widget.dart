import '../controller/home_report_controller.dart';
import '../models/ecgreport_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class EcgreportItemWidget extends StatelessWidget {
  EcgreportItemWidget(
    this.ecgreportItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EcgreportItemModel ecgreportItemModelObj;

  var controller = Get.find<HomeReportController>();

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.symmetric(vertical: 12.v, horizontal: 12.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              5.h,
            ),
            border: Border.all(
              color: appTheme.blueGray100,
              width: 1.h,
            ),
          ),
          child: Row(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgBifilepdf,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 3.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_ecg_report".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Text(
                      "lbl_4_oct_2023".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                svgPath: ImageConstant.imgArrowright,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  top: 4.v,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
        );
  }
}
