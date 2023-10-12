import '../controller/qr_scanner_controller.dart';
import 'package:get/get.dart';

/// A binding class for the QrScannerScreen.
///
/// This class ensures that the QrScannerController is created when the
/// QrScannerScreen is first loaded.
class QrScannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrScannerController());
  }
}
