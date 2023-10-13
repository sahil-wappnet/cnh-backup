import '../controller/lab_tests_and_doctor_consultant_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LabTestsAndDoctorConsultantScreen.
///
/// This class ensures that the LabTestsAndDoctorConsultantController is created when the
/// LabTestsAndDoctorConsultantScreen is first loaded.
class LabTestsAndDoctorConsultantBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LabTestsAndDoctorConsultantController());
  }
}
