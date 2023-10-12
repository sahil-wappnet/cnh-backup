import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/medicine_details_screen/models/medicine_details_model.dart';/// A controller class for the MedicineDetailsScreen.
///
/// This class manages the state of the MedicineDetailsScreen, including the
/// current medicineDetailsModelObj
class MedicineDetailsController extends GetxController {Rx<MedicineDetailsModel> medicineDetailsModelObj = MedicineDetailsModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
