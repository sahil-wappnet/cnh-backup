import 'package:flutter/cupertino.dart';
import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/booked_appointment_screen/models/booked_appointment_model.dart';

/// A controller class for the BookedAppointmentScreen.
///
/// This class manages the state of the BookedAppointmentScreen, including the
/// current bookedAppointmentModelObj
class BookedAppointmentController extends GetxController {
  Rx<BookedAppointmentModel> bookedAppointmentModelObj =
      BookedAppointmentModel().obs;
  TextEditingController arrowrightController = TextEditingController();
  @override void onClose() { super.onClose(); arrowrightController.dispose(); } 

}
