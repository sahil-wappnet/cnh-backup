import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/queue_move_in_queue_page/models/queue_move_in_queue_model.dart';

/// A controller class for the QueueMoveInQueuePage.
///
/// This class manages the state of the QueueMoveInQueuePage, including the
/// current queueMoveInQueueModelObj
class QueueMoveInQueueController extends GetxController {
  QueueMoveInQueueController(this.queueMoveInQueueModelObj);

  Rx<QueueMoveInQueueModel> queueMoveInQueueModelObj;
}
