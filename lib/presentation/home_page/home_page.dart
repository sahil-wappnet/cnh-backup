import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/app_bar/appbar_circleimage_1.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import '../home_health_page/home_health_page.dart';
import '../home_home_care_screen/home_home_care_screen.dart';
import '../home_medication_new_page/home_medication_new_page.dart';
import '../home_page/widgets/userprofile_item_widget.dart';
import '../home_page_tab_container_screen/models/appointmentlist_item_model.dart';
import '../home_page_tab_container_screen/widgets/appointmentlist_item_widget.dart';
import '../home_report_page/home_report_page.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: SizedBox(
        width: double.maxFinite,
        height: mediaQueryData.size.height,
        child: Padding(
          padding: EdgeInsets.only(
            top: 10.v,
          ),
          child: Column(
            children: [
              ListTile(
                leading: AppbarCircleimage1(
                  imagePath: ImageConstant.imgEllipse1,
                ),
                title: AppbarTitle(
                  text: "lbl_hello_shreya".tr,
                  margin: EdgeInsets.only(left: 10.h),
                ),
                subtitle: AppbarTitle(
                  text: "lbl_shreya".tr,
                  margin: EdgeInsets.only(left: 10.h),
                ),
                trailing: AppbarImage1(
                  svgPath: ImageConstant.imgMdibellnotificationoutline,
                  onTap: () {
                    Get.toNamed(AppRoutes.notificationsTabContainerScreen);
                  },
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.v,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.v, horizontal: 10.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: CustomSearchView(
                              margin: EdgeInsets.only(left: 5.v),
                              controller: controller.searchController,
                              hintText: "lbl_search".tr,
                              prefix: Container(
                                child: CustomImageView(
                                  margin: EdgeInsets.only(left: 5.v),
                                  svgPath: ImageConstant.imgSearchPrimary,
                                ),
                              ),
                              prefixConstraints: BoxConstraints(
                                maxHeight: 40.v,
                              ),
                              suffix: IconButton(
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
                          CustomIconButton(
                            height: 40.v,
                            width: 39.h,
                            margin: EdgeInsets.only(left: 10.v),
                            padding: EdgeInsets.all(9.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgMifilter,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.v),
                      child: Obx(
                        () => CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 115.v,
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
                          itemCount: controller.homePageTabContainerModelObj
                              .value.appointmentlistItemList.value.length,
                          itemBuilder: (context, index, realIndex) {
                            AppointmentlistItemModel model = controller
                                .homePageTabContainerModelObj
                                .value
                                .appointmentlistItemList
                                .value[index];
                            return AppointmentlistItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                    Center(
                      child: Obx(
                        () => SizedBox(
                          height: 2.v,
                          child: AnimatedSmoothIndicator(
                            activeIndex: controller.sliderIndex.value,
                            count: controller.homePageTabContainerModelObj.value
                                .appointmentlistItemList.value.length,
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
                    SizedBox(
                      height: 10.v,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.v),
                        child: Text(
                          "lbl_services".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Container(
                      height: 30.v,
                      width: 393.h,
                      child: TabBar(
                        controller: controller.tabviewController,
                        isScrollable: true,
                        labelColor: theme.colorScheme.primary,
                        labelStyle: TextStyle(
                          fontSize: 14.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                        unselectedLabelColor: appTheme.gray700,
                        unselectedLabelStyle: TextStyle(
                          fontSize: 14.fSize,
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
                    Expanded(
                      child: TabBarView(
                        controller: controller.tabviewController,
                        children: [
                          SizedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10.v,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.v),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "lbl_live_doctors".tr,
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                      Text(
                                        "lbl_view_all".tr,
                                        style: theme.textTheme.bodyMedium!.copyWith(color: theme.colorScheme.primary,),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15.v),
                                SizedBox(
                                  height: mediaQueryData.size.height / 10,
                                  child: Expanded(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 10,
                                      itemBuilder: (context, index) {
                                        return Container(
                                            width:
                                                mediaQueryData.size.width / 5,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 7.v),
                                            child: Column(
                                              children: [
                                                Stack(
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse185,
                                                      radius:
                                                          BorderRadius.circular(
                                                              17.h),
                                                    ),
                                                    Positioned(
                                                      bottom: 7,
                                                      right: 0,
                                                      child: Container(
                                                        width: 12.v,
                                                        height: 12.v,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.green,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 2.v,
                                                ),
                                                Text(
                                                  'Dr. Joy',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodyMediumBluegray900_1,
                                                ),
                                              ],
                                            ));
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.v),
                                  child: Text(
                                    "msg_recommended_doctors".tr,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                Expanded(
                                  child: Obx(
                                    () => ListView.separated(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.v),
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (
                                        context,
                                        index,
                                      ) {
                                        return SizedBox(
                                          height: 15.v,
                                        );
                                      },
                                      itemCount: controller.homeModelObj.value
                                          .userprofileItemList.value.length,
                                      itemBuilder: (context, index) {
                                        UserprofileItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .userprofileItemList
                                            .value[index];
                                        return UserprofileItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          HomeReportPage(),
                          HomeMedicationNewPage(),
                          HomeHealthPage(),
                          HomeHomeCareScreen(),
                        ],
                      ),
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
