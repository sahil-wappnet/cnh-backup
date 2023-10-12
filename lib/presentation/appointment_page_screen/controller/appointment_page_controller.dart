
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/appointment_page_model.dart';

/// A controller class for the AppointmentPageScreen.
///
/// This class manages the state of the AppointmentPageScreen, including the
/// current appointmentPageModelObj
class AppointmentPageController extends GetxController {
  Rx<AppointmentPageModel> appointmentPageModelObj = AppointmentPageModel().obs;
}
