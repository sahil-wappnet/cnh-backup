import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/home_medication_refill_page/models/home_medication_refill_model.dart';

/// A controller class for the HomeMedicationRefillPage.
///
/// This class manages the state of the HomeMedicationRefillPage, including the
/// current homeMedicationRefillModelObj
class HomeMedicationRefillController extends GetxController {
  HomeMedicationRefillController(this.homeMedicationRefillModelObj);

  Rx<HomeMedicationRefillModel> homeMedicationRefillModelObj;
}
