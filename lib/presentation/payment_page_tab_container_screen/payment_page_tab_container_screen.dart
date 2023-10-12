import 'controller/payment_page_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/payment_page/payment_page.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_bottom_bar.dart';

class PaymentPageTabContainerScreen
    extends GetWidget<PaymentPageTabContainerController> {
  const PaymentPageTabContainerScreen({Key? key}) : super(key: key);

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
                    text: "lbl_payment".tr, margin: EdgeInsets.only(left: 6.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMdibellnotificationoutline,
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 18.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 13.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    Text("msg_consulting_fees".tr,
                        style: CustomTextStyles.bodyMediumOnPrimary),
                    SizedBox(height: 18.v),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("msg_choose_payment_mode".tr,
                                      style: theme.textTheme.bodyLarge)),
                              SizedBox(height: 12.v),
                              Container(
                                  height: 20.v,
                                  width: 310.h,
                                  child: TabBar(
                                      controller: controller.tabviewController,
                                      labelPadding: EdgeInsets.zero,
                                      labelColor: theme.colorScheme.primary,
                                      labelStyle: TextStyle(
                                          fontSize: 12.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400),
                                      unselectedLabelColor: appTheme.gray700,
                                      unselectedLabelStyle: TextStyle(
                                          fontSize: 12.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400),
                                      indicatorColor: theme.colorScheme.primary,
                                      tabs: [
                                        Tab(child: Text("lbl_card".tr)),
                                        Tab(child: Text("lbl_upi".tr)),
                                        Tab(child: Text("lbl_net_banking".tr)),
                                        Tab(child: Text("lbl_pay_later".tr))
                                      ]))
                            ])),
                    SizedBox(
                        height: 691.v,
                        child: TabBarView(
                            controller: controller.tabviewController,
                            children: [
                              PaymentPage(),
                              PaymentPage(),
                              PaymentPage(),
                              PaymentPage()
                            ]))
                  ])))
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
