import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/chats_controller.dart';
import 'models/chats_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

class ChatsPage extends StatelessWidget {
  ChatsPage({Key? key});

  final ChatsController controller = Get.put(ChatsController(ChatsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          CustomAppBar(
              title: AppbarTitle(
                  text: "lbl_chats".tr, margin: EdgeInsets.only(left: 7.h)),
              actions: [
                AppbarImage1(
                    svgPath: ImageConstant.imgMdibellnotificationoutline,
                    onTap: () {
                      onTapMdibellnotifica();
                    })
              ]),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 35.v,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.h),
                    child: CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_search".tr,
                      prefix: Container(
                          margin: EdgeInsets.only(left: 10.v),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgSearchPrimary)),
                      prefixConstraints: BoxConstraints(maxHeight: 35.v),
                      suffix: Icon(
                        Icons.abc,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 31.v,
                  ),
                  Container(
                      height: 45.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: theme.colorScheme.onSecondaryContainer,
                              width: 1.h),
                        ),
                      ),
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
                      height: mediaQueryData.size.height,
                      child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.v, vertical: 10.v),
                                child: ListView.builder(
                                    itemCount: 5,
                                    shrinkWrap: true,     
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5.v),
                                    itemBuilder: (context, index) {
                                      return InkWell(onTap: () {
                                        Get.toNamed(AppRoutes.messageScreen);
                                      },
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 7.v, vertical: 8.v),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .placeholderImage,
                                                height: 50.adaptSize,
                                                width: 50.adaptSize,
                                                radius: BorderRadius.circular(
                                                  17.h,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 11.h),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "lbl_dr_bose".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodyMediumBluegray900_1,
                                                    ),
                                                    SizedBox(height: 2.v),
                                                    Text(
                                                      'lbl_okay_will_do'.tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                    
                                                  ],
                                                ),
                                              ),
                                              Spacer(),
                                              Text(
                                                'lbl_10_00'.tr,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme.textTheme.bodySmall,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    })),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.v, vertical: 10.v),
                                child: ListView.builder(
                                    itemCount: 5,
                                    shrinkWrap: true,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5.v),
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.v, vertical: 8.v),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .placeholderImage,
                                              height: 50.adaptSize,
                                              width: 50.adaptSize,
                                              radius: BorderRadius.circular(
                                                17.h,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 11.h),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "lbl_dr_bose".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodyMediumBluegray900_1,
                                                  ),
                                                  SizedBox(height: 2.v),
                                                  Text(
                                                    'lbl_okay_will_do'.tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: theme
                                                        .textTheme.bodySmall,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              'lbl_10_00'.tr,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ],
                                        ),
                                      );
                                    },),),
                          ],),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  onTapMdibellnotifica() {
    Get.toNamed(
      AppRoutes.notificationsTabContainerScreen,
    );
  }
}
