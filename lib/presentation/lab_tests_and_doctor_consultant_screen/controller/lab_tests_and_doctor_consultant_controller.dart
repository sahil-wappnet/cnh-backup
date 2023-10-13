import 'package:get/get.dart';

import '../models/lab_tests_and_doctor_consultant_model.dart';

/// A controller class for the LabTestsAndDoctorConsultantScreen.
///
/// This class manages the state of the LabTestsAndDoctorConsultantScreen, including the
/// current labTestsAndDoctorConsultantModelObj
class LabTestsAndDoctorConsultantController extends GetxController {
  Rx<LabTestsAndDoctorConsultantModel> labTestsAndDoctorConsultantModelObj =
      LabTestsAndDoctorConsultantModel().obs;
}
