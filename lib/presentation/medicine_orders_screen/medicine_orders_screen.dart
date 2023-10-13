import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';

import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../medicine_orders_screen/widgets/userorder_item_widget.dart';
import 'controller/medicine_orders_controller.dart';
import 'models/userorder_item_model.dart';
import 'package:flutter/material.dart';

class MedicineOrdersScreen extends GetWidget<MedicineOrdersController> {
  const MedicineOrdersScreen({Key? key}) : super(key: key);

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
                    text: "lbl_medicine_orders".tr,
                    margin: EdgeInsets.only(left: 6.h))),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 15.v, right: 52.h),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 23.v);
                    },
                    itemCount: controller.medicineOrdersModelObj.value
                        .userorderItemList.value.length,
                    itemBuilder: (context, index) {
                      UserorderItemModel model = controller
                          .medicineOrdersModelObj
                          .value
                          .userorderItemList
                          .value[index];
                      return UserorderItemWidget(model);
                    }))),
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
