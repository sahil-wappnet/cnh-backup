import '../home_report_page/widgets/ecgreport_item_widget.dart';
import 'controller/home_report_controller.dart';
import 'models/ecgreport_item_model.dart';
import 'models/home_report_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeReportPage extends StatelessWidget {
  HomeReportPage({Key? key});

  final HomeReportController controller =
      Get.put(HomeReportController(HomeReportModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 10.v,
        vertical: 10.v,
      ),
      physics: NeverScrollableScrollPhysics(),
      children: [
        Text(
          "lbl_recently_added".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 10.v),
        Container(
          padding: EdgeInsets.symmetric(vertical: 12.v, horizontal: 12.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              5.h,
            ),
            border: Border.all(
              color: appTheme.blueGray100,
              width: 1.h,
            ),
          ),
          child: Row(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgBifilepdf,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 3.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_ecg_report".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Text(
                      "lbl_4_oct_2023".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                svgPath: ImageConstant.imgArrowright,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  top: 4.v,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.v,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 2.v,
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
          ],
        ),
        SizedBox(height: 10.v),
        CustomElevatedButton(
          text: "lbl_add_new_report".tr,
        ),
        SizedBox(height: 10.v),
        Text(
          "lbl_all_reports".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 10.v),
        Obx(
          () => ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller
                .homeReportModelObj.value.ecgreportItemList.value.length,
            itemBuilder: (context, index) {
              EcgreportItemModel model = controller
                  .homeReportModelObj.value.ecgreportItemList.value[index];
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5.v),
                child: EcgreportItemWidget(
                  model,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
