import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/chats_tab_container_screen/models/chats_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChatsTabContainerScreen.
///
/// This class manages the state of the ChatsTabContainerScreen, including the
/// current chatsTabContainerModelObj
class ChatsTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {TextEditingController searchController = TextEditingController();

Rx<ChatsTabContainerModel> chatsTabContainerModelObj = ChatsTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
