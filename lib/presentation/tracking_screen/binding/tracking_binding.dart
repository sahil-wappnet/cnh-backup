import '../controller/tracking_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrackingScreen.
///
/// This class ensures that the TrackingController is created when the
/// TrackingScreen is first loaded.
class TrackingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrackingController());
  }
}
