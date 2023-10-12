import '../controller/add_prescription_upload_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddPrescriptionUploadScreen.
///
/// This class ensures that the AddPrescriptionUploadController is created when the
/// AddPrescriptionUploadScreen is first loaded.
class AddPrescriptionUploadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPrescriptionUploadController());
  }
}
