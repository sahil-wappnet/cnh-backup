import 'controller/home_health_controller.dart';
import 'models/home_health_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

class HomeHealthPage extends StatelessWidget {
  HomeHealthPage({Key? key})
      : super(
          key: key,
        );

  HomeHealthController controller =
      Get.put(HomeHealthController(HomeHealthModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 10.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.v,),
          Text(
            "lbl_health_tips".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(
            height: 10.v,
          ),
          SizedBox(
            height: 637.v,
            width: mediaQueryData.size.width,
            child: Stack(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgGridiconsplay,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 71.v),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle20,
                        height: 182.v,
                        width: 328.h,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                        "msg_precautions_during".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      Container(
                        width: 310.h,
                        margin: EdgeInsets.only(
                          top: 12.v,
                          right: 18.h,
                        ),
                        child: Text(
                          "msg_lorem_ipsum_is_simply".tr,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 20.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle20182x328,
                        height: 182.v,
                        width: 328.h,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                        "msg_benefits_of_yoga".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      Container(
                        width: 310.h,
                        margin: EdgeInsets.only(
                          top: 12.v,
                          right: 18.h,
                        ),
                        child: Text(
                          "msg_lorem_ipsum_is_simply".tr,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
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
