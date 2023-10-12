import '../models/chipview10_am_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Chipview10AmItemWidget extends StatelessWidget {
  Chipview10AmItemWidget(
    this.chipview10AmItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Chipview10AmItemModel chipview10AmItemModelObj;

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
            chipview10AmItemModelObj.k10am.value,
            style: TextStyle(
              color: appTheme.gray700,
              fontSize: 13.fSize,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: chipview10AmItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.gray700.withOpacity(0.2),
          shape: chipview10AmItemModelObj.isSelected.value
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
            chipview10AmItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
