import '../onboarding_screenthree_screen/widgets/slider2_item_widget.dart';
import '../onboarding_screenthree_screen/widgets/sliderbookcareg_item_widget.dart';
import 'controller/onboarding_screenthree_controller.dart';
import 'models/slider2_item_model.dart';
import 'models/sliderbookcareg_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingScreenthreeScreen
    extends GetWidget<OnboardingScreenthreeController> {
  const OnboardingScreenthreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 16.h,
            top: 102.v,
            right: 16.h,
          ),
          child: Column(
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
                  top: 11.v,
                  right: 34.h,
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
                        controller.sliderIndex.value = index;
                      },
                    ),
                    itemCount: controller.onboardingScreenthreeModelObj.value
                        .slider2ItemList.value.length,
                    itemBuilder: (context, index, realIndex) {
                      Slider2ItemModel model = controller
                          .onboardingScreenthreeModelObj
                          .value
                          .slider2ItemList
                          .value[index];
                      return Slider2ItemWidget(
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
                      top: 10.v,
                      right: 34.h,
                    ),
                    child: AnimatedSmoothIndicator(
                      activeIndex: controller.sliderIndex.value,
                      count: controller.onboardingScreenthreeModelObj.value
                          .slider2ItemList.value.length,
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
              Padding(
                padding: EdgeInsets.only(right: 17.h),
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
                        controller.sliderIndex1.value = index;
                      },
                    ),
                    itemCount: controller.onboardingScreenthreeModelObj.value
                        .sliderbookcaregItemList.value.length,
                    itemBuilder: (context, index, realIndex) {
                      SliderbookcaregItemModel model = controller
                          .onboardingScreenthreeModelObj
                          .value
                          .sliderbookcaregItemList
                          .value[index];
                      return SliderbookcaregItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 31.v,
                  right: 3.h,
                  bottom: 50.v,
                ),
                child: Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
