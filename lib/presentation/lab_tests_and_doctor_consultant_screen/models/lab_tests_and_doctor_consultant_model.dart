import '../../../core/app_export.dart';import 'userprofileview_item_model.dart';/// This class defines the variables used in the [lab_tests_and_doctor_consultant_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LabTestsAndDoctorConsultantModel {Rx<List<UserprofileviewItemModel>> userprofileviewItemList = Rx(List.generate(4,(index) => UserprofileviewItemModel()));

 }
