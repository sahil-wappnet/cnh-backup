import 'controller/home_medication_new_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/custom_icon_button.dart';
import 'package:sahil_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeMedicationNewTabContainerScreen
    extends GetWidget<HomeMedicationNewTabContainerController> {
  const HomeMedicationNewTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomSearchView(
                          controller: controller.searchController,
                          hintText: "lbl_search".tr,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(
                                10.h, 10.v, 5.h, 10.v),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgSearchPrimary,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 40.v,
                          ),
                          suffix: Padding(
                            padding: EdgeInsets.only(
                              right: 15.h,
                            ),
                            child: IconButton(
                              onPressed: () {
                                controller.searchController.clear();
                              },
                              icon: Icon(
                                Icons.clear,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      CustomIconButton(
                        height: 40.v,
                        width: 39.h,
                        margin: EdgeInsets.only(left: 9.h),
                        padding: EdgeInsets.all(9.h),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgMifilter,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 32.v,
                ),
                child: Text(
                  "lbl_services".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Container(
                height: 20.v,
                width: 315.h,
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 14.v,
                ),
                child: TabBar(
                  controller: controller.tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: theme.colorScheme.primary,
                  labelStyle: TextStyle(
                    fontSize: 12.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelColor: appTheme.gray700,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 12.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                  indicatorColor: theme.colorScheme.primary,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_doctors".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_appointment".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_report".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_medication".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_health".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              Container(
                height: 48.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: theme.colorScheme.onSecondaryContainer,
                      width: 1.h,
                    ),
                  ),
                ),
                child: TabBar(
                  controller: controller.sectionsController,
                  isScrollable: true,
                  labelColor: theme.colorScheme.primary,
                  labelStyle: TextStyle(
                    fontSize: 14.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: appTheme.gray700,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 14.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                  indicatorColor: theme.colorScheme.primary,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_refill_medicine".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_new_medicine".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 553.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    Container(),Container()
                  ],
                ),
              ),
            ],
          ),
        ),
      );
      
    
  }
}
