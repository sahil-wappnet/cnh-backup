import 'package:sahil_s_application2/presentation/my_cart_screen/widget/product_details_item.dart';
import 'package:sahil_s_application2/widgets/app_bar/appbar_title.dart';

import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/my_cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/custom_elevated_button.dart';

import 'models/productdetails_item_model.dart';

class MyCartScreen extends GetWidget<MyCartController> {
  const MyCartScreen({Key? key}) : super(key: key);

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
                text: "lbl_my_cart".tr,
                margin: EdgeInsets.only(left: 6.h))),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.h,vertical: 10.v),
            children: [
              Obx(() => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 22.v);
                        },
                        itemCount: controller.myCartModelObj.value
                            .productdetailsItemList.value.length,
                        itemBuilder: (context, index) {
                          ProductdetailsItemModel model = controller
                              .myCartModelObj
                              .value
                              .productdetailsItemList
                              .value[index];
                          return ProductdetailsItemWidget(model);
                        })),
                    CustomElevatedButton(
                        text: "lbl_add_more_items".tr,
                        margin: EdgeInsets.only(top: 29.v, right: 9.h)),
                    SizedBox(height: 20.v),
                    Text("msg_price_details_3".tr,
                        style: theme.textTheme.bodyLarge),
                    Text("msg_total_mrp".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium),
                    SizedBox(height: 12.v),
                    Divider(),
                    SizedBox(height: 5.v),
                    Text("msg_total_price2".tr,
                        style: theme.textTheme.bodyLarge),
                    Expanded(child: Container()),
                    
              
            ]),
            floatingActionButton: Container(
              padding: EdgeInsets.only(left: 30.v),
              width: mediaQueryData.size.width,
              child: CustomElevatedButton(
                        text: "lbl_checkout".tr,
                        onTap: () {
                          onTapCheckout();
                        }),
            ),
            );
  }

  /// Navigates to the medicineDetailsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the medicineDetailsScreen.
  onTapMycart() {
    Get.toNamed(
      AppRoutes.medicineDetailsScreen,
    );
  }

  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the addPrescriptionScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the addPrescriptionScreen.
  onTapCheckout() {
    Get.toNamed(
      AppRoutes.addPrescriptionScreen,
    );
  }
}
