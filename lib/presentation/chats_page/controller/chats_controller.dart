import 'package:flutter/material.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/chats_page/models/chats_model.dart';

class ChatsController extends GetxController
    with GetSingleTickerProviderStateMixin {
  ChatsController(this.chatsModelObj);
  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
  final TextEditingController searchController = TextEditingController();

  Rx<ChatsModel> chatsModelObj;
}
