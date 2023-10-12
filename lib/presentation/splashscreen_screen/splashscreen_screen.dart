import 'controller/splashscreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

class SplashscreenScreen extends GetWidget<SplashscreenController> {
  const SplashscreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: mediaQueryData.size.height,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topRight, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgAirplanePrimary91x93,
                              height: 91.v,
                              width: 93.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 13.h)),
                          CustomImageView(
                              imagePath: ImageConstant.imgAirplanePrimary91x93,
                              height: 47.v,
                              width: 93.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(right: 105.h)),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplane,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 108.h, top: 34.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgAirplaneWhiteA700,
                              height: 81.v,
                              width: 77.h,
                              alignment: Alignment.topRight),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplanePrimary,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 81.v, right: 46.h)),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplanePrimary,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.topRight,
                              margin:
                                  EdgeInsets.only(top: 162.v, right: 105.h)),
                          CustomImageView(
                              imagePath: ImageConstant.imgAirplanePrimary62x46,
                              height: 62.v,
                              width: 46.h,
                              alignment: Alignment.topRight),
                          CustomImageView(
                              imagePath: ImageConstant.imgAirplanePrimary91x93,
                              height: 93.v,
                              width: 47.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: 94.v)),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplane,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 52.h, top: 141.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgAirplanePrimary91x93,
                              height: 93.v,
                              width: 87.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: 241.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgAirplanePrimary91x93,
                              height: 93.v,
                              width: 56.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 155.v)),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplane,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 120.h, top: 272.v)),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplane,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 268.v, right: 18.h)),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplanePrimary,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.bottomRight,
                              margin:
                                  EdgeInsets.only(right: 105.h, bottom: 329.v)),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplane,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 52.h)),
                          CustomImageView(
                              imagePath: ImageConstant.imgAirplanePrimary91x93,
                              height: 93.v,
                              width: 66.h),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplane,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.bottomLeft,
                              margin:
                                  EdgeInsets.only(left: 74.h, bottom: 221.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgAirplanePrimary91x93,
                              height: 93.v,
                              width: 56.h,
                              alignment: Alignment.centerRight),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplane,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.bottomRight,
                              margin:
                                  EdgeInsets.only(right: 24.h, bottom: 240.v)),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplane,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.bottomRight,
                              margin:
                                  EdgeInsets.only(right: 92.h, bottom: 167.v)),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplane,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(bottom: 159.v)),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplane,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.bottomLeft,
                              margin:
                                  EdgeInsets.only(left: 94.h, bottom: 97.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgAirplanePrimary91x93,
                              height: 93.v,
                              width: 71.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(bottom: 105.v)),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplane,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.bottomRight,
                              margin:
                                  EdgeInsets.only(right: 69.h, bottom: 31.v)),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplane,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(left: 81.h)),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 80.h, vertical: 300.v),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGroup184,
                                      height: 200.v,
                                      width: 199.h))),
                          CustomImageView(
                              svgPath: ImageConstant.imgAirplane,
                              height: 93.adaptSize,
                              width: 93.adaptSize,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(bottom: 33.v))
                        ]))))));
  }
}
