import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/home_page/models/home_model.dart';

import '../../home_page_tab_container_screen/models/home_page_tab_container_model.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin{
  
  HomeController(this.homeModelObj);
  TextEditingController searchController = TextEditingController();
  Rx<HomePageTabContainerModel> homePageTabContainerModelObj =
      HomePageTabContainerModel().obs;
  Rx<int> sliderIndex = 0.obs;
  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 5));

  Rx<HomeModel> homeModelObj;
}
