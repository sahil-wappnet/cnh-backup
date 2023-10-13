import '../controller/home_home_care_controller.dart';
import '../models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  var controller = Get.find<HomeHomeCareController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.placeholderImage,
            height: 34.adaptSize,
            width: 34.adaptSize,
            radius: BorderRadius.circular(
              17.h,
            ),
            margin: EdgeInsets.only(bottom: 48.v),
          ),
          Container(
            height: 81.v,
            width: 108.h,
            margin: EdgeInsets.only(left: 11.h),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          userprofile3ItemModelObj.userName!.value,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumBluegray900_1,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Obx(
                        () => Text(
                          userprofile3ItemModelObj.userExperience!.value,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 81.v,
                    width: 30.h,
                    margin: EdgeInsets.only(right: 33.h),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 13.v,
                            width: 30.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(
                                6.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Obx(
                                    () => Text(
                                      userprofile3ItemModelObj
                                          .userRating!.value,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          CustomTextStyles.bodySmallWhiteA7008,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 63.v),
                                CustomImageView(
                                  svgPath: ImageConstant.imgStar,
                                  height: 6.adaptSize,
                                  width: 6.adaptSize,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
