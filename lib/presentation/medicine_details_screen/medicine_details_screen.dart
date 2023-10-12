import '../medicine_details_screen/widgets/slider3_item_widget.dart';
import 'controller/medicine_details_controller.dart';
import 'models/slider3_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MedicineDetailsScreen extends GetWidget<MedicineDetailsController> {
  const MedicineDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 25.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    
                    onTap: () {
                      onTapArrowleftone();
                    }),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMdicartoutline,
                      )
                ]),
            body: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.only(
                        left: 16.h, right: 12.h, bottom: 5.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(() => CarouselSlider.builder(
                              options: CarouselOptions(
                                  height: 156.v,
                                  initialPage: 0,
                                  autoPlay: true,
                                  viewportFraction: 1.0,
                                  enableInfiniteScroll: false,
                                  scrollDirection: Axis.horizontal,
                                  onPageChanged: (index, reason) {
                                    controller.sliderIndex.value = index;
                                  }),
                              itemCount: controller.medicineDetailsModelObj
                                  .value.slider3ItemList.value.length,
                              itemBuilder: (context, index, realIndex) {
                                Slider3ItemModel model = controller
                                    .medicineDetailsModelObj
                                    .value
                                    .slider3ItemList
                                    .value[index];
                                return Slider3ItemWidget(model);
                              })),
                          SizedBox(height: 15.v),
                          Align(
                              alignment: Alignment.center,
                              child: Obx(() => SizedBox(
                                  height: 2.v,
                                  child: AnimatedSmoothIndicator(
                                      activeIndex:
                                          controller.sliderIndex.value,
                                      count: controller
                                          .medicineDetailsModelObj
                                          .value
                                          .slider3ItemList
                                          .value
                                          .length,
                                      axisDirection: Axis.horizontal,
                                      effect: ScrollingDotsEffect(
                                          spacing: 7,
                                          activeDotColor:
                                              theme.colorScheme.primary,
                                          dotColor: appTheme.blueGray100,
                                          dotHeight: 2.v,
                                          dotWidth: 15.h))))),
                          SizedBox(height: 39.v),
                          Text("lbl_octoxid".tr,
                              style: theme.textTheme.bodyLarge),
                          SizedBox(height: 2.v),
                          Text("msg_by_tidal_laboratories".tr,
                              style: theme.textTheme.bodySmall),
                          Padding(
                              padding:
                                  EdgeInsets.only(top: 21.v, right: 2.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_rs_300".tr,
                                              style: CustomTextStyles
                                                  .bodyLargePrimary),
                                          Text("msg_inclusive_all_taxes".tr,
                                              style:
                                                  theme.textTheme.bodySmall)
                                        ]),
                                    CustomElevatedButton(
                                        width: 157.h,
                                        text: "lbl_add_to_cart".tr,
                                        leftIcon: Container(
                                            margin:
                                                EdgeInsets.only(right: 3.h),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgMdicartoutlineWhiteA700)))
                                  ])),
                          SizedBox(height: 22.v),
                          Text("msg_selected_pack_size".tr,
                              style: theme.textTheme.bodyLarge),
                          SizedBox(height: 1.v),
                          Text("lbl_2_bottles".tr,
                              style: theme.textTheme.bodySmall),
                          SizedBox(height: 22.v),
                          Text("msg_product_information".tr,
                              style: theme.textTheme.bodyLarge),
                          Container(
                              width: 310.h,
                              margin:
                                  EdgeInsets.only(top: 14.v, right: 20.h),
                              child: Text("msg_lorem_ipsum_is_simply".tr,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyMedium)),
                          SizedBox(height: 20.v),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                      Text("lbl_know_more".tr,
                                          style: theme.textTheme.bodyLarge),
                                      SizedBox(height: 15.v),
                                      SizedBox(
                                          width: 310.h,
                                          child: Text(
                                              "msg_lorem_ipsum_is_simply"
                                                  .tr,
                                              maxLines: 5,
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              style: theme
                                                  .textTheme.bodyMedium))
                                    ])),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(bottom: 93.v))
                              ]),
                          SizedBox(height: 21.v),
                          SizedBox(
                              height: 260.v,
                              width: 324.h,
                              child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                bottom: 62.v),
                                            child: Column(
                                                mainAxisSize:
                                                    MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                children: [
                                                  Text("lbl_disclaimer".tr,
                                                      style: theme.textTheme
                                                          .bodyLarge),
                                                  SizedBox(height: 14.v),
                                                  SizedBox(
                                                      width: 310.h,
                                                      child: Text(
                                                          "msg_lorem_ipsum_is_simply"
                                                              .tr,
                                                          maxLines: 5,
                                                          overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                          style: theme
                                                              .textTheme
                                                              .bodyMedium))
                                                ]))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_return_policy".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge),
                                              Container(
                                                  width: 310.h,
                                                  margin: EdgeInsets.only(
                                                      top: 13.v,
                                                      right: 13.h),
                                                  child: Text(
                                                      "msg_lorem_ipsum_is_simply2"
                                                          .tr,
                                                      maxLines: 2,
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      style: theme.textTheme
                                                          .bodyMedium)),
                                              SizedBox(height: 158.v),
                                              GestureDetector(
                                                onTap: (){
                                                  Get.toNamed(AppRoutes.myCartScreen);
                                                },
                                                child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 9.h,
                                                            vertical: 8.v),
                                                    decoration: AppDecoration
                                                        .fillPrimary
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder5),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                              height: 17.v,
                                                              width: 95.h,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                        alignment: Alignment
                                                                            .center,
                                                                        child: Text(
                                                                            "lbl_1_pack_rs_300".tr,
                                                                            style: CustomTextStyles.bodyMediumWhiteA700)),
                                                                    Align(
                                                                        alignment: Alignment
                                                                            .center,
                                                                        child: Text(
                                                                            "lbl_1_pack_rs_300".tr,
                                                                            style: CustomTextStyles.bodyMediumWhiteA700))
                                                                  ])),
                                                          Spacer(),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgMdicartoutlineWhiteA700,
                                                              height: 20
                                                                  .adaptSize,
                                                              width: 20
                                                                  .adaptSize),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          3.h,
                                                                      right: 2
                                                                          .h),
                                                              child: Text(
                                                                  "lbl_view_cart"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumWhiteA700))
                                                        ])),
                                              )
                                            ]))
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
