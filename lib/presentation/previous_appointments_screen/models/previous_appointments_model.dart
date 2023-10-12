import '../../../core/app_export.dart';import 'userprofile2_item_model.dart';/// This class defines the variables used in the [previous_appointments_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PreviousAppointmentsModel {Rx<List<Userprofile2ItemModel>> userprofile2ItemList = Rx(List.generate(3,(index) => Userprofile2ItemModel()));

 }
