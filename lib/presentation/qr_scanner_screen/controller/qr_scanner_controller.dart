import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/qr_scanner_screen/models/qr_scanner_model.dart';

/// A controller class for the QrScannerScreen.
///
/// This class manages the state of the QrScannerScreen, including the
/// current qrScannerModelObj
class QrScannerController extends GetxController {
  Rx<QrScannerModel> qrScannerModelObj = QrScannerModel().obs;
}
