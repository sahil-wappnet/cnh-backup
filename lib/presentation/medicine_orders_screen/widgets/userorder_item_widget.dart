import 'package:sahil_s_application2/core/app_export.dart';

import '../controller/medicine_orders_controller.dart';
import '../models/userorder_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserorderItemWidget extends StatelessWidget {
  UserorderItemWidget(
    this.userorderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserorderItemModel userorderItemModelObj;

  var controller = Get.find<MedicineOrdersController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.v,
      width: 292.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle15,
            height: 80.adaptSize,
            width: 80.adaptSize,
          ),
          SizedBox(width: 7.h,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  userorderItemModelObj.userName!.value,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                "msg_by_tidal_laboratories".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 6.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "msg_order_on_1_oct".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(width: 7.h,),
                  Container(
                    margin: EdgeInsets.only(bottom: 7.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 13.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillTeal.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder9,
                    ),
                    child: Obx(
                      () => Text(
                        userorderItemModelObj.delivered!.value,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallWhiteA700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
