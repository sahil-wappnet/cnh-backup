import '../../doctors_details_screen/doctors_details_screen.dart';
import '../controller/home_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;


  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(DoctorsDetailsScreen());
      },
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.placeholderImage,
            height: 45.adaptSize,
            width: 45.adaptSize,
            radius: BorderRadius.circular(
              17.h,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Obx(
                        () => Text(
                          userprofileItemModelObj.userName!.value,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumBluegray900_1,
                        ),
                      ),
                      CustomElevatedButton(
                        height: 13.v,
                        width: 30.h,
                        text: "lbl_4_5".tr,
                        margin: EdgeInsets.only(
                          left: 5.h,
                          bottom: 2.v,
                        ),
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 2.h),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgStar,
                          ),
                        ),
                        buttonTextStyle: CustomTextStyles.bodySmallWhiteA7008,
                      ),
                    ],
                  ),
                  SizedBox(height: 2.v),
                  Obx(
                    () => Text(
                      userprofileItemModelObj.userSpeciality!.value,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
