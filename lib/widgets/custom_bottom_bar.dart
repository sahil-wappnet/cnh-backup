import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
    this.selectedIndex = 0,
  }) : super(
          key: key,
        );

  final int selectedIndex;
  final Function(int)? onChanged;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgMingcutecalendarline,
      activeIcon: ImageConstant.imgMingcutecalendarline,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMingcutecalendarline, // Replace with your Appointments icon
      activeIcon: ImageConstant.imgMingcutecalendarline, // Replace with your active Appointments icon
      title: "lbl_appointments".tr,
      type: BottomBarEnum.Appointments,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPhchatbold,
      activeIcon: ImageConstant.imgPhchatbold,
      title: "lbl_chats".tr,
      type: BottomBarEnum.Chats,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconamoonprofile,
      activeIcon: ImageConstant.imgIconamoonprofile,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.v,
      decoration: BoxDecoration(
        // color: appTheme.whiteA700,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: 24.v,
              width: 20.h,
              color: appTheme.indigo200,
            ),
            activeIcon: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  bottomMenuList[index].title ?? "",
                  style: CustomTextStyles.bodyMediumPrimary.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
                CustomImageView(
                  svgPath: bottomMenuList[index].activeIcon,
                  height: 24.v,
                  width: 20.h,
                  color: appTheme.indigo200,
                  margin: EdgeInsets.only(left: 64.h),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          onChanged?.call(index);
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Appointments,
  Chats,
  Profile,
}


class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
