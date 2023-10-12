import '../controller/add_self_vital_detail_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddSelfVitalDetailPageScreen.
///
/// This class ensures that the AddSelfVitalDetailPageController is created when the
/// AddSelfVitalDetailPageScreen is first loaded.
class AddSelfVitalDetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddSelfVitalDetailPageController());
  }
}
