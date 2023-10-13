import '../controller/all_health_record_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AllHealthRecordScreen.
///
/// This class ensures that the AllHealthRecordController is created when the
/// AllHealthRecordScreen is first loaded.
class AllHealthRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllHealthRecordController());
  }
}
