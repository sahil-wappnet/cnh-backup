import 'controller/queue_move_in_queue_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/queue_move_in_queue_with_detail_page/queue_move_in_queue_with_detail_page.dart';
import 'package:sahil_s_application2/presentation/queue_new_queue_page/queue_new_queue_page.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_bottom_bar.dart';

class QueueMoveInQueueTabContainerScreen
    extends GetWidget<QueueMoveInQueueTabContainerController> {
  const QueueMoveInQueueTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 40.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarSubtitle(
                    text: "lbl_queue".tr, margin: EdgeInsets.only(left: 6.h))),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 9.v),
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
                            Tab(child: Text("lbl_move_in_queue".tr)),
                            Tab(child: Text("lbl_new_queue".tr))
                          ])),
                  SizedBox(
                      height: 585.v,
                      child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            QueueMoveInQueueWithDetailPage(),
                            QueueNewQueuePage()
                          ]))
                ])),
            bottomNavigationBar:
                CustomBottomBar(
                  // onChanged: (BottomBarEnum type) {}
                  )));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
