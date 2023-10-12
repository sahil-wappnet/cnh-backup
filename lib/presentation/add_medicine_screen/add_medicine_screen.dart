import 'controller/add_medicine_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class AddMedicineScreen extends GetWidget<AddMedicineController> {
  const AddMedicineScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 43.v),
              Expanded(
                child: SingleChildScrollView(
                  child: CustomSearchView(
                    width: 328.h,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      right: 16.h,
                      bottom: 867.v,
                    ),
                    controller: controller.searchController,
                    hintText: "msg_search_medicines".tr,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(10.h, 10.v, 5.h, 10.v),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearchPrimary,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 40.v,
                    ),
                    suffix: Padding(
                      padding: EdgeInsets.only(
                        right: 15.h,
                      ),
                      child: IconButton(
                        onPressed: () {
                          controller.searchController.clear();
                        },
                        icon: Icon(
                          Icons.clear,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
