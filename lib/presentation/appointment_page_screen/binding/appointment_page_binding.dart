import '../controller/appointment_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AppointmentPageScreen.
///
/// This class ensures that the AppointmentPageController is created when the
/// AppointmentPageScreen is first loaded.
class AppointmentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppointmentPageController());
  }
}
