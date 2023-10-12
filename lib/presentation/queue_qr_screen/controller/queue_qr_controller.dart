import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/queue_qr_screen/models/queue_qr_model.dart';/// A controller class for the QueueQrScreen.
///
/// This class manages the state of the QueueQrScreen, including the
/// current queueQrModelObj
class QueueQrController extends GetxController {Rx<QueueQrModel> queueQrModelObj = QueueQrModel().obs;

 }
