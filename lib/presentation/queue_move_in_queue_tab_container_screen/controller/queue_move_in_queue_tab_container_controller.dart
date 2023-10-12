import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/queue_move_in_queue_tab_container_screen/models/queue_move_in_queue_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the QueueMoveInQueueTabContainerScreen.
///
/// This class manages the state of the QueueMoveInQueueTabContainerScreen, including the
/// current queueMoveInQueueTabContainerModelObj
class QueueMoveInQueueTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<QueueMoveInQueueTabContainerModel> queueMoveInQueueTabContainerModelObj = QueueMoveInQueueTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
