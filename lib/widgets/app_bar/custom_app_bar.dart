import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,right:20),
          child: AppBar(
            elevation: 0,
            toolbarHeight: height ?? 54.v,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            flexibleSpace: _getStyle(),
            leadingWidth: leadingWidth ?? 0,
            leading: leading,
            title: title,
            titleSpacing: 0,
            centerTitle: centerTitle ?? false,
            actions: actions,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? 56.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill:
        return Container(
          height: 1.v,
          width: 350.h,
          margin: EdgeInsets.fromLTRB(16.h, 46.5.v, 16.h, 8.5.v),
          decoration: BoxDecoration(
            color: appTheme.blueGray100,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill,
}
