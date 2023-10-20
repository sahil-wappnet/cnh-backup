import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/onboarding_screenone_screen/controller/onboarding_screenone_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreenoneScreen extends StatelessWidget {
  const OnboardingScreenoneScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingScreenoneController>(
      init: OnboardingScreenoneController(),
      initState: (_) {},
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: ListView(
              padding: EdgeInsets.symmetric(
                vertical: 4,
              ),
              children: [
                Center(
                  child: ExpandablePageView.builder(
                    itemCount: 3,
                    pageSnapping: true,
                    controller: controller.pageController,
                    onPageChanged: (page) {
                      controller.activePage.value = page;
                      controller.update();
                    },
                    itemBuilder: (context, pagePosition) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 100.v),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 200.h, right: 58.h),
                              child: Divider(
                                color: appTheme.indigoA400,
                                thickness: 3,
                              ),
                            ),
                            SizedBox(height: 5.v),
                            Center(
                              child: Image.asset(
                                controller.activePage.value == 0
                                    ? "assets/images/onborading1.png"
                                    : controller.activePage.value == 1
                                        ? "assets/images/onboarding2.png"
                                        : "assets/images/onboarding3.png",
                                height: 260.v,
                                width: 260.h,
                              ),
                            ),
                            SizedBox(height: 5.v),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 58.h, right: 200.h),
                              child: Divider(
                                color: appTheme.indigoA400,
                                thickness: 3,
                              ),
                            ),
                            SizedBox(height: 80.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.h),
                              child: Text(
                                controller.activePage.value == 0
                                    ? "Check your health"
                                    : controller.activePage.value == 1
                                        ? "Online report and medicine"
                                        : "Book Caregivers",
                                textAlign: TextAlign.start,
                                style: CustomTextStyles.bodyLargeBluegray900,
                              ),
                            ),
                            SizedBox(height: 20.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.h),
                              child: Text(
                                controller.activePage.value == 0
                                    ? "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                                    : controller.activePage.value == 1
                                        ? "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                                        : "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                style: CustomTextStyles.bodyLargeBluegray900,
                              ),
                            ),
                            SizedBox(height: 40.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.h),
                              child: Row(
                                children: [
                                  AnimatedSmoothIndicator(
                                    activeIndex: controller.activePage.value,
                                    count: 3,
                                    effect: WormEffect(
                                      dotHeight: 2.v,
                                      dotWidth: 20.h,
                                      activeDotColor: appTheme.indigoA400,
                                      dotColor:
                                          appTheme.gray500.withOpacity(0.5),
                                    ),
                                  ),
                                  Spacer(),
                                  InkWell(
                                    onTap: () {
                                      Get.offAllNamed(AppRoutes.signInScreen);
                                    },
                                    child: Text(
                                      "Skip",
                                      style: CustomTextStyles.bodyLargePrimary,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
