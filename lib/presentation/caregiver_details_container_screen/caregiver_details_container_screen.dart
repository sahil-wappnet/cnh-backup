import 'controller/caregiver_details_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/caregiver_details_page/caregiver_details_page.dart';
import 'package:sahil_s_application2/presentation/profile_page/profile_page.dart';
import 'package:sahil_s_application2/widgets/custom_bottom_bar.dart';

class CaregiverDetailsContainerScreen
    extends GetWidget<CaregiverDetailsContainerController> {
  const CaregiverDetailsContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.caregiverDetailsPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(
                  // onChanged: (BottomBarEnum type) {}
                  )));
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.caregiverDetailsPage:
        return CaregiverDetailsPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return CaregiverDetailsPage();
    }
  }
}
