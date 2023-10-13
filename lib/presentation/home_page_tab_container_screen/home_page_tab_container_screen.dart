import 'controller/home_page_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePageTabContainerScreen
    extends GetWidget<HomePageTabContainerController> {
  const HomePageTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Obx(
    () => controller.pages[controller.selectedIndex.value],
      ),
      bottomNavigationBar: Obx(
    () => BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: theme.colorScheme.primary,
      currentIndex: controller.selectedIndex.value,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,
              size: controller.selectedIndex.value == 0 ? 0 : 24),
          label: controller.selectedIndex.value == 0 ? 'Home' : "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today,
              size: controller.selectedIndex.value == 1 ? 0 : 24),
          label: controller.selectedIndex.value == 1 ? 'Appointments' : "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat,
              size: controller.selectedIndex.value == 2 ? 0 : 24),
          label: controller.selectedIndex.value == 2 ? 'Chats' : "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person,
              size: controller.selectedIndex.value == 3 ? 0 : 24),
          label: controller.selectedIndex.value == 3 ? 'Profile' : "",
        ),
      ],
      onTap: controller.changePage,
    ),
      ),
    );
  }
}
