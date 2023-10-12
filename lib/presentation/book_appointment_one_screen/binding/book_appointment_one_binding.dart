import '../controller/book_appointment_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookAppointmentOneScreen.
///
/// This class ensures that the BookAppointmentOneController is created when the
/// BookAppointmentOneScreen is first loaded.
class BookAppointmentOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookAppointmentOneController());
  }
}
