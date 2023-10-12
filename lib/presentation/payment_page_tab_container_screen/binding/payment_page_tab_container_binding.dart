import '../controller/payment_page_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentPageTabContainerScreen.
///
/// This class ensures that the PaymentPageTabContainerController is created when the
/// PaymentPageTabContainerScreen is first loaded.
class PaymentPageTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentPageTabContainerController());
  }
}
