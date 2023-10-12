import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/home_page_tab_container_screen/models/home_page_tab_container_model.dart';import 'package:flutter/material.dart';

import '../../../widgets/custom_bottom_bar.dart';
import '../../appointment_page_screen/appointment_page_screen.dart';
import '../../book_appointment_one_screen/book_appointment_one_screen.dart';
import '../../chats_page/chats_page.dart';
import '../../home_page/home_page.dart';
import '../../profile_page/profile_page.dart';

class HomePageTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {

  Rx<HomePageTabContainerModel> homePageTabContainerModelObj =
      HomePageTabContainerModel().obs;

  late TabController tabviewController;

  final List<Widget> pages = [
    HomePage(),
    AppointmentPageScreen(),
    ChatsPage(),
    ProfilePage(),
  ];

  Rx<int> sliderIndex = 0.obs;
  var selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }
  Rx<Widget> selectedScreen = HomePage().obs; 

  @override
  void onInit() {
    super.onInit();
    tabviewController = TabController(vsync: this, length: 5);
    tabviewController.addListener(() {
      changeTab(BottomBarEnum.values[tabviewController.index]);
    });
  }

  @override
  void onClose() {
    super.onClose();
    tabviewController.dispose();
  }

  // Function to handle tab changes and update the selected screen
  void changeTab(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        selectedScreen.value = HomePage();
        break;
      case BottomBarEnum.Appointments:
        selectedScreen.value = BookAppointmentOneScreen(); // Replace with the appropriate screen
        break;
      case BottomBarEnum.Chats:
        selectedScreen.value = BookAppointmentOneScreen(); // Replace with the appropriate screen
        break;
      case BottomBarEnum.Profile:
        selectedScreen.value = BookAppointmentOneScreen(); // Replace with the appropriate screen
        break;
    }
  }


  
}