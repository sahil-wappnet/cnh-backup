import '../models/chipview0_am2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Chipview0Am2ItemWidget extends StatelessWidget {
  Chipview0Am2ItemWidget(
    this.chipview0Am2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Chipview0Am2ItemModel chipview0Am2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 12.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            chipview0Am2ItemModelObj.k10am.value,
            style: TextStyle(
              color: appTheme.gray700,
              fontSize: 13.fSize,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: chipview0Am2ItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.gray700.withOpacity(0.2),
          shape: chipview0Am2ItemModelObj.isSelected.value
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.blueGray100,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.blueGray100,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
          onSelected: (value) {
            chipview0Am2ItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
