import '../onboarding_screenone_screen/widgets/checkyourhealth_item_widget.dart';
import '../onboarding_screenone_screen/widgets/slider_item_widget.dart';
import 'controller/onboarding_screenone_controller.dart';
import 'models/checkyourhealth_item_model.dart';
import 'models/slider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingScreenoneScreen
    extends GetWidget<OnboardingScreenoneController> {
  const OnboardingScreenoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 102.v,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 99.v),
                child: Obx(
                  () => CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 110.v,
                      initialPage: 0,
                      autoPlay: true,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (
                        index,
                        reason,
                      ) {
                        controller.sliderIndex.value = index;
                      },
                    ),
                    itemCount: controller.onboardingScreenoneModelObj.value
                        .checkyourhealthItemList.value.length,
                    itemBuilder: (context, index, realIndex) {
                      CheckyourhealthItemModel model = controller
                          .onboardingScreenoneModelObj
                          .value
                          .checkyourhealthItemList
                          .value[index];
                      return CheckyourhealthItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 3.h,
                    bottom: 5.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 2.v,
                        margin: EdgeInsets.only(left: 34.h),
                        child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                            spacing: 7,
                            activeDotColor: theme.colorScheme.primary,
                            dotColor: appTheme.blueGray100,
                            dotHeight: 2.v,
                            dotWidth: 15.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 34.h,
                          top: 10.v,
                          right: 31.h,
                        ),
                        child: Obx(
                          () => CarouselSlider.builder(
                            options: CarouselOptions(
                              height: 260.adaptSize,
                              initialPage: 0,
                              autoPlay: true,
                              viewportFraction: 1.0,
                              enableInfiniteScroll: false,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (
                                index,
                                reason,
                              ) {
                                controller.sliderIndex1.value = index;
                              },
                            ),
                            itemCount: controller.onboardingScreenoneModelObj
                                .value.sliderItemList.value.length,
                            itemBuilder: (context, index, realIndex) {
                              SliderItemModel model = controller
                                  .onboardingScreenoneModelObj
                                  .value
                                  .sliderItemList
                                  .value[index];
                              return SliderItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Obx(
                          () => Container(
                            height: 2.v,
                            margin: EdgeInsets.only(
                              top: 11.v,
                              right: 31.h,
                            ),
                            child: AnimatedSmoothIndicator(
                              activeIndex: controller.sliderIndex1.value,
                              count: controller.onboardingScreenoneModelObj
                                  .value.sliderItemList.value.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 7,
                                activeDotColor: theme.colorScheme.primary,
                                dotColor: appTheme.blueGray100,
                                dotHeight: 2.v,
                                dotWidth: 15.h,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 2.v,
                            margin: EdgeInsets.only(
                              top: 6.v,
                              bottom: 8.v,
                            ),
                            child: AnimatedSmoothIndicator(
                              activeIndex: 0,
                              count: 3,
                              effect: ScrollingDotsEffect(
                                spacing: 7,
                                activeDotColor: theme.colorScheme.primary,
                                dotColor: appTheme.blueGray100,
                                dotHeight: 2.v,
                                dotWidth: 15.h,
                              ),
                            ),
                          ),
                          Text(
                            "lbl_skip".tr,
                            style: CustomTextStyles.bodyMediumPrimary,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
