import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/queue_new_queue_page/models/queue_new_queue_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the QueueNewQueuePage.
///
/// This class manages the state of the QueueNewQueuePage, including the
/// current queueNewQueueModelObj
class QueueNewQueueController extends GetxController {
  QueueNewQueueController(this.queueNewQueueModelObj);

  TextEditingController queuetitlevalueController = TextEditingController();

  TextEditingController timeController = TextEditingController();

  Rx<QueueNewQueueModel> queueNewQueueModelObj;

  @override
  void onClose() {
    super.onClose();
    queuetitlevalueController.dispose();
    timeController.dispose();
  }
}
