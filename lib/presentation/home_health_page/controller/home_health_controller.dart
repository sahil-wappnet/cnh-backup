import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/home_health_page/models/home_health_model.dart';

/// A controller class for the HomeHealthPage.
///
/// This class manages the state of the HomeHealthPage, including the
/// current homeHealthModelObj
class HomeHealthController extends GetxController {
  HomeHealthController(this.homeHealthModelObj);

  Rx<HomeHealthModel> homeHealthModelObj;
}
