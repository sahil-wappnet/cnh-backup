import '../models/chipviewgroupsi_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewgroupsiItemWidget extends StatelessWidget {
  ChipviewgroupsiItemWidget(
    this.chipviewgroupsiItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChipviewgroupsiItemModel chipviewgroupsiItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 12.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            chipviewgroupsiItemModelObj.groupSixtyTwo.value,
            style: TextStyle(
              color: appTheme.gray700,
              fontSize: 13.fSize,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: chipviewgroupsiItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.gray700.withOpacity(0.2),
          shape: chipviewgroupsiItemModelObj.isSelected.value
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
            chipviewgroupsiItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
