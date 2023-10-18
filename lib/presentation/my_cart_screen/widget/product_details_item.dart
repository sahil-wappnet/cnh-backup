import 'package:flutter/cupertino.dart';
import 'package:sahil_s_application2/core/app_export.dart';

import '../controller/my_cart_controller.dart';
import '../models/productdetails_item_model.dart';

class ProductdetailsItemWidget extends StatelessWidget {
  ProductdetailsItemWidget(this.productdetailsItemModelObj, {Key? key});

  final ProductdetailsItemModel productdetailsItemModelObj;

  final controller = Get.find<MyCartController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle15,
          height: 80.adaptSize,
          width: 80.adaptSize,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => Text(
                productdetailsItemModelObj.productName!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: 2.v),
            Text(
              "msg_by_tidal_laboratories".tr,
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 9.v),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        productdetailsItemModelObj.price!.value,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLargePrimary,
                      ),
                    ),
                    Text(
                      "msg_inclusive_all_taxes".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                Container(
                  width: 70.h,
                  margin: EdgeInsets.only(
                    left: 61.h,
                    top: 4.v,
                  ),
                  padding: EdgeInsets.all(5.h),
                  decoration: AppDecoration.outlineBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgClarityminusline,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          top: 2.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "lbl_1".tr,
                          style: CustomTextStyles.bodySmallPrimary,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgMiadd,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(left: 7.h),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
