import '../controller/booked_appointment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookedAppointmentScreen.
///
/// This class ensures that the BookedAppointmentController is created when the
/// BookedAppointmentScreen is first loaded.
class BookedAppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookedAppointmentController());
  }
}
