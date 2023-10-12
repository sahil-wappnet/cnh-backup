import 'controller/chats_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_search_view.dart';

class ChatsTabContainerScreen extends GetWidget<ChatsTabContainerController> {
  const ChatsTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              CustomAppBar(
            leadingWidth: 40.h,
            leading: AppbarImage(
                svgPath: ImageConstant.imgArrowleft,
                margin:
                    EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v),
                onTap: () {
                  onTapArrowleftone();
                }),
            title: AppbarSubtitle(
                text: "lbl_chats".tr, margin: EdgeInsets.only(left: 6.h)),
            actions: [
              AppbarImage1(
                  svgPath: ImageConstant.imgMdibellnotificationoutline,
                  margin: EdgeInsets.symmetric(
                      horizontal: 20.h, vertical: 18.v))
            ]),
              CustomSearchView(
                  margin:
                      EdgeInsets.only(left: 16.h, top: 17.v, right: 20.h),
                  controller: controller.searchController,
                  hintText: "lbl_search".tr,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(10.h, 10.v, 5.h, 10.v),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgSearchPrimary)),
                  prefixConstraints: BoxConstraints(maxHeight: 40.v),
                  suffix: Padding(
                      padding: EdgeInsets.only(right: 15.h),
                      child: IconButton(
                          onPressed: () {
                            controller.searchController.clear();
                          },
                          icon: Icon(Icons.clear,
                              color: Colors.grey.shade600)))),
              SizedBox(height: 17.v),
              Container(
                  height: 48.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: theme.colorScheme.onSecondaryContainer,
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
                        Tab(child: Text("lbl_chats".tr)),
                        Tab(child: Text("lbl_calls".tr))
                      ])),
              SizedBox(
                  height: 520.v,
                  child: TabBarView(
                      controller: controller.tabviewController,
                      children: [Container(), Container()]))
            ]));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
