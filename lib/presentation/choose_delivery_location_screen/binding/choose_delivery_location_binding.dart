import '../controller/choose_delivery_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChooseDeliveryLocationScreen.
///
/// This class ensures that the ChooseDeliveryLocationController is created when the
/// ChooseDeliveryLocationScreen is first loaded.
class ChooseDeliveryLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseDeliveryLocationController());
  }
}
