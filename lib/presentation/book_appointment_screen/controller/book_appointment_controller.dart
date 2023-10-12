import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/book_appointment_screen/models/book_appointment_model.dart';/// A controller class for the BookAppointmentScreen.
///
/// This class manages the state of the BookAppointmentScreen, including the
/// current bookAppointmentModelObj
class BookAppointmentController extends GetxController {Rx<BookAppointmentModel> bookAppointmentModelObj = BookAppointmentModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in bookAppointmentModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} bookAppointmentModelObj.value.dropdownItemList.refresh(); } 
 }
