import 'controller/home_medication_refill_controller.dart';
import 'models/home_medication_refill_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

class HomeMedicationRefillPage extends StatelessWidget {
  HomeMedicationRefillPage({Key? key});

  final HomeMedicationRefillController controller =
      Get.put(HomeMedicationRefillController(HomeMedicationRefillModel().obs));

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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16.h),
                  child: IntrinsicWidth(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "lbl_home_care".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 97.v,
                            right: 19.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_added_medicine".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgGridiconsaddoutline,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 14.v,
                            right: 19.h,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCovidvaccinep,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 5.v,
                                  bottom: 6.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_ocdox_50".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    SizedBox(height: 2.v),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "lbl_10_tablets".tr,
                                        style: theme.textTheme.bodySmall,
                                      ),
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
                                  top: 5.v,
                                  bottom: 6.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 14.v),
                          child: Divider(
                            endIndent: 16.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 13.v,
                            right: 19.h,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCovidvaccinep,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 5.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_dsr_50".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    SizedBox(height: 1.v),
                                    Text(
                                      "lbl_10_tablets".tr,
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
                                margin: EdgeInsets.symmetric(vertical: 5.v),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.v),
                          child: Divider(
                            endIndent: 16.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 14.v,
                            right: 19.h,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCovidvaccinep,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 4.v,
                                  bottom: 5.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Column(
                                  children: [
                                    Text(
                                      "lbl_thyrox_2_5".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    Text(
                                      "lbl_10_tablets".tr,
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
                        ),
                        CustomElevatedButton(
                          text: "lbl_view_cart".tr,
                          margin: EdgeInsets.only(
                            top: 264.v,
                            right: 18.h,
                          ),
                        ),
                      ],
                    ),
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
