import 'controller/notifications_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/notifications_offers_page/notifications_offers_page.dart';
import 'package:sahil_s_application2/presentation/notifications_page/notifications_page.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';

class NotificationsTabContainerScreen
    extends GetWidget<NotificationsTabContainerController> {
  const NotificationsTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 25.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(top: 16.v, bottom: 16.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarSubtitle(
                    text: "lbl_notifications".tr,
                    margin: EdgeInsets.only(left: 6.h))),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Column(children: [
                      Container(
                          height: 48.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: theme
                                          .colorScheme.onSecondaryContainer,
                                      width: 1.h))),
                          child: TabBar(
                              controller: controller.tabviewController,
                              labelPadding: EdgeInsets.zero,
                              labelColor: theme.colorScheme.primary,
                              labelStyle: TextStyle(
                                  fontSize: 14.fSize,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500),
                              unselectedLabelColor: appTheme.gray70001,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: 14.fSize,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500),
                              indicatorColor: theme.colorScheme.primary,
                              tabs: [
                                Tab(child: Text("lbl_all".tr)),
                                Tab(child: Text("lbl_offers".tr))
                              ])),
                      SizedBox(
                          height: 815.v,
                          child: TabBarView(
                              controller: controller.tabviewController,
                              children: [
                                NotificationsPage(),
                                NotificationsOffersPage()
                              ]))
                    ])))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
