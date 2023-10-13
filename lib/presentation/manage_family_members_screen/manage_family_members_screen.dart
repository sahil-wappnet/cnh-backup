import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';

import 'controller/manage_family_members_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sahil_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

class ManageFamilyMembersScreen
    extends GetWidget<ManageFamilyMembersController> {
  const ManageFamilyMembersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        appBar: CustomAppBar(
            leadingWidth: 25.h,
            leading: AppbarImage(
                svgPath: ImageConstant.imgArrowleft,
                
                onTap: () {
                  onTapArrowleftone();
                }),
            title: AppbarTitle(
                text: "msg_manage_family_members".tr,
                margin: EdgeInsets.only(left: 10.h))),
        body: Container(
          height: mediaQueryData.size.height,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.v),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text("lbl_all_profiles".tr,
                          style: theme.textTheme.bodyLarge)),
                  Padding(
                      padding: EdgeInsets.only(left: 7.h, top: 22.v),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath:
                                    ImageConstant.imgPixelarticonsarchive,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(
                                    top: 13.v, bottom: 15.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_archived_0".tr,
                                          style: theme.textTheme.bodyLarge),
                                      SizedBox(
                                          width: 234.h,
                                          child: Text(
                                              "msg_profiles_that_you".tr,
                                              maxLines: 2,
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyMedium14_1))
                                    ])),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 42.h, top: 13.v, bottom: 15.v))
                          ])),
                  Padding(
                      padding: EdgeInsets.only(top: 19.v),
                      child: Divider(indent: 7.h, endIndent: 7.h)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 7.h, top: 24.v, right: 4.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.placeholderImage,
                            height: 34.adaptSize,
                            width: 34.adaptSize,
                            radius: BorderRadius.circular(17.h)),
                        Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_ahreya_self".tr,
                                      style: CustomTextStyles
                                          .bodyMediumBluegray900_1),
                                  SizedBox(height: 2.v),
                                  Text("msg_female_30_years".tr,
                                      style: theme.textTheme.bodySmall)
                                ])),
                        Spacer(),
                        CustomImageView(
                            svgPath: ImageConstant.imgRieditline,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            onTap: (){
                              Get.toNamed(AppRoutes.editFamilyMemberProfileScreen);
                            },
                            margin: EdgeInsets.symmetric(vertical: 7.v))
                      ])),
                      SizedBox(height: 25.v,),
                      CustomElevatedButton(
                      text: "lbl_add_new_profile".tr,
                      onTap: () {
                        Get.toNamed(AppRoutes.addNewFamilyMemberScreen);
                      },
                      margin: EdgeInsets.only(
                          left: 7.h, right: 7.h, bottom: 37.v))                                
                ])),
                
        );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
