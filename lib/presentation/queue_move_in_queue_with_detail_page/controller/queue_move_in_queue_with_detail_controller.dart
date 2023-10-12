import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/queue_move_in_queue_with_detail_page/models/queue_move_in_queue_with_detail_model.dart';

/// A controller class for the QueueMoveInQueueWithDetailPage.
///
/// This class manages the state of the QueueMoveInQueueWithDetailPage, including the
/// current queueMoveInQueueWithDetailModelObj
class QueueMoveInQueueWithDetailController extends GetxController {
  QueueMoveInQueueWithDetailController(this.queueMoveInQueueWithDetailModelObj);

  Rx<QueueMoveInQueueWithDetailModel> queueMoveInQueueWithDetailModelObj;
}
