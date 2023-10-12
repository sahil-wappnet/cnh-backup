import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/add_appointment_page_screen/models/add_appointment_page_model.dart';

/// A controller class for the AddAppointmentPageScreen.
///
/// This class manages the state of the AddAppointmentPageScreen, including the
/// current addAppointmentPageModelObj
class AddAppointmentPageController extends GetxController {
  Rx<AddAppointmentPageModel> addAppointmentPageModelObj =
      AddAppointmentPageModel().obs;
}
