import 'controller/home_health_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/home_appointment_page/home_appointment_page.dart';
import 'package:sahil_s_application2/presentation/home_health_page/home_health_page.dart';
import 'package:sahil_s_application2/presentation/home_report_page/home_report_page.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_circleimage_1.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_bottom_bar.dart';
import 'package:sahil_s_application2/widgets/custom_icon_button.dart';
import 'package:sahil_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeHealthTabContainerScreen
    extends GetWidget<HomeHealthTabContainerController> {
  const HomeHealthTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 66.h,
          leading: AppbarCircleimage1(
            imagePath: ImageConstant.imgEllipse1,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
              bottom: 3.v,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_hello_shreya".tr,
            margin: EdgeInsets.only(left: 14.h),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgMdibellnotificationoutline,
              margin: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 18.v,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 17.v),
              Expanded(
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
                      SizedBox(height: 14.v),
                      Container(
                        height: 20.v,
                        width: 393.h,
                        child: TabBar(
                          controller: controller.tabviewController,
                          isScrollable: true,
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
                            Tab(
                              child: Text(
                                "lbl_home_care".tr,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 731.v,
                        child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            HomeHealthPage(),
                            HomeAppointmentPage(),
                            HomeReportPage(),
                            HomeReportPage(),
                            HomeHealthPage(),
                            HomeHealthPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          // onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
