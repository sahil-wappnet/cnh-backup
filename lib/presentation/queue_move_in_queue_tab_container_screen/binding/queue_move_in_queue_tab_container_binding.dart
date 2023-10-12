import '../controller/queue_move_in_queue_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the QueueMoveInQueueTabContainerScreen.
///
/// This class ensures that the QueueMoveInQueueTabContainerController is created when the
/// QueueMoveInQueueTabContainerScreen is first loaded.
class QueueMoveInQueueTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QueueMoveInQueueTabContainerController());
  }
}
