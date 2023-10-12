import '../controller/add_appointment_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddAppointmentPageScreen.
///
/// This class ensures that the AddAppointmentPageController is created when the
/// AddAppointmentPageScreen is first loaded.
class AddAppointmentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddAppointmentPageController());
  }
}
