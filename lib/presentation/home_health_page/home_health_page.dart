import 'controller/home_health_controller.dart';
import 'models/home_health_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

class HomeHealthPage extends StatelessWidget {
  HomeHealthPage({Key? key});

  final HomeHealthController controller =
      Get.put(HomeHealthController(HomeHealthModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return ListView(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 10.v, vertical: 10.v),
      children: [
        Text(
          "lbl_health_tips".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(
          width: mediaQueryData.size.width,
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(vertical: 10.v),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.v),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.v, horizontal: 12.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                      border: Border.all(
                        color: appTheme.blueGray100,
                        width: 1.h,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle20,
                          height: 182.v,
                          width: mediaQueryData.size.width,
                        ),
                        SizedBox(height: 10.v),
                        Text(
                          "msg_precautions_during".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                        SizedBox(height: 10.v),
                        Text(
                          "msg_lorem_ipsum_is_simply".tr,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
