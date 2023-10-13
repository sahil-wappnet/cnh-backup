import 'package:get/get.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../all_health_record_screen/widgets/ecgreport1_item_widget.dart';
import 'controller/all_health_record_controller.dart';
import 'models/ecgreport1_item_model.dart';

import 'package:flutter/material.dart';

class AllHealthRecordScreen extends GetWidget<AllHealthRecordController> {
  const AllHealthRecordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 25.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    
                    onTap: () {
                      onTapArrowleftone();
                    }),
                title: AppbarTitle(
                    text: "msg_all_health_records".tr,
                    margin: EdgeInsets.only(left: 6.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: EdgeInsets.only(right: 3.h),
                        child: Obx(() => ListView.separated(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 9.v);
                            },
                            itemCount: controller.allHealthRecordModelObj
                                .value.ecgreport1ItemList.value.length,
                            itemBuilder: (context, index) {
                              Ecgreport1ItemModel model = controller
                                  .allHealthRecordModelObj
                                  .value
                                  .ecgreport1ItemList
                                  .value[index];
                              return Ecgreport1ItemWidget(model);
                            }))))),
            ));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
