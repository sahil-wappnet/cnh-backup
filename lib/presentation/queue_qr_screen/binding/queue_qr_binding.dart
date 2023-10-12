import '../controller/queue_qr_controller.dart';
import 'package:get/get.dart';

/// A binding class for the QueueQrScreen.
///
/// This class ensures that the QueueQrController is created when the
/// QueueQrScreen is first loaded.
class QueueQrBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QueueQrController());
  }
}
