import '../controller/medicine_details_controller.dart';
import '../models/slider3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Slider3ItemWidget extends StatelessWidget {
  Slider3ItemWidget(
    this.slider3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Slider3ItemModel slider3ItemModelObj;

  var controller = Get.find<MedicineDetailsController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle15,
      height: 156.v,
      width: 331.h,
    );
  }
}
