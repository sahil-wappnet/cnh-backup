import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/tracking_screen/models/tracking_model.dart';/// A controller class for the TrackingScreen.
///
/// This class manages the state of the TrackingScreen, including the
/// current trackingModelObj
class TrackingController extends GetxController {Rx<TrackingModel> trackingModelObj = TrackingModel().obs;

 }
