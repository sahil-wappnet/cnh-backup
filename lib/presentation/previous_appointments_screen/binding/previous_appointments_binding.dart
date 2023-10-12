import '../controller/previous_appointments_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PreviousAppointmentsScreen.
///
/// This class ensures that the PreviousAppointmentsController is created when the
/// PreviousAppointmentsScreen is first loaded.
class PreviousAppointmentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PreviousAppointmentsController());
  }
}
