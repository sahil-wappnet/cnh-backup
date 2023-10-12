import '../controller/payment_controller.dart';
import '../models/slidercurrentba_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SlidercurrentbaItemWidget extends StatelessWidget {
  SlidercurrentbaItemWidget(
    this.slidercurrentbaItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SlidercurrentbaItemModel slidercurrentbaItemModelObj;

  var controller = Get.find<PaymentController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: AppDecoration.gradientSecondaryContainerToIndigoA.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder30,
        ),
        child: Container(
          margin: EdgeInsets.only(right: 4.h),
          padding: EdgeInsets.all(20.h),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup27,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  right: 2.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 3.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: 0.54,
                            child: Text(
                              "lbl_current_balance".tr,
                              style:
                                  CustomTextStyles.titleSmallCeraProWhiteA700,
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "lbl_5_750_20".tr,
                            style: CustomTextStyles.bodyLargeWhiteA700,
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgUserYellow800,
                      height: 35.v,
                      width: 45.h,
                      margin: EdgeInsets.only(bottom: 28.v),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 57.v,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Opacity(
                      opacity: 0.9,
                      child: Text(
                        "msg_5282_3456_7890_1289".tr,
                        style: CustomTextStyles.titleSmallCeraProWhiteA700_1,
                      ),
                    ),
                    Text(
                      "lbl_09_25".tr,
                      style: CustomTextStyles.titleSmallCeraProWhiteA700_2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
