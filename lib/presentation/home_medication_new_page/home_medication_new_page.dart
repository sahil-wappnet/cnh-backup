import '../../widgets/custom_elevated_button.dart';
import 'controller/home_medication_new_controller.dart';
import 'models/home_medication_new_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

class HomeMedicationNewPage extends StatelessWidget {
  HomeMedicationNewPage({Key? key});

  final HomeMedicationNewController controller =
      Get.put(HomeMedicationNewController(HomeMedicationNewModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10.v),
        physics: NeverScrollableScrollPhysics(),
        child: Expanded(
          child: Column(children: [
            // Container(
            //     height: 30.v,
            //     width: 393.h,
            //     child: TabBar(
            //       controller: controller.tabviewControllerMediaction,
            //       isScrollable: true,
            //       labelColor: theme.colorScheme.primary,
            //       labelStyle: TextStyle(
            //         fontSize: 14.fSize,
            //         fontFamily: 'Roboto',
            //         fontWeight: FontWeight.w400,
            //       ),
            //       unselectedLabelColor: appTheme.gray700,
            //       unselectedLabelStyle: TextStyle(
            //         fontSize: 14.fSize,
            //         fontFamily: 'Roboto',
            //         fontWeight: FontWeight.w400,
            //       ),
            //       indicatorColor: theme.colorScheme.primary,
            //       tabs: [
            //         Tab(
            //           child: Text(
            //             "lbl_new_medicine".tr,
            //           ),
            //         ),
            //         Tab(
            //           child: Text(
            //             "lbl_refill_medicine".tr,
            //           ),
            //         ),Tab(
            //           child: Text(
            //             "lbl_new_medicine".tr,
            //           ),
            //         ),
            //         Tab(
            //           child: Text(
            //             "lbl_refill_medicine".tr,
            //           ),
            //         ),Tab(
            //           child: Text(
            //             "lbl_new_medicine".tr,
            //           ),
            //         ),

            //       ],
            //     )),
            // Expanded(
            //     child: TabBarView(
            //         controller: controller.tabviewControllerMediaction,
            //         children: [
            //       Container(
            //         color: Colors.amber,
            //       ),
            //       Container(
            //         color: Colors.red,
            //       ),Container(
            //         color: Colors.amber,
            //       ),
            //       Container(
            //         color: Colors.red,
            //       ),Container(
            //         color: Colors.amber,
            //       ),

            //     ])),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.v, left: 10.v, right: 10.v),
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
                    left: 10.v,
                    right: 10.h,
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
                        onTap: () {
                          Get.toNamed(AppRoutes.medicineDetailsScreen);
                        },
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
                    top: 14.v,
                    left: 10.v,
                    right: 10.h,
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
                        onTap: () {
                          Get.toNamed(AppRoutes.medicineDetailsScreen);
                        },
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
                    left: 10.v,
                    right: 10.h,
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
                        onTap: () {
                          Get.toNamed(AppRoutes.medicineDetailsScreen);
                        },
                        margin: EdgeInsets.only(
                          top: 4.v,
                          bottom: 5.v,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomElevatedButton(
                  onTap: () {
                    Get.toNamed(AppRoutes.myCartScreen);
                  },
                  text: "lbl_view_cart".tr,
                  margin: EdgeInsets.only(
                    top: 20.v,
                    right: 18.h,
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
