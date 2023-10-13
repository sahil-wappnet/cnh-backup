
import 'package:get/get.dart';

import '../models/all_health_record_model.dart';

/// A controller class for the AllHealthRecordScreen.
///
/// This class manages the state of the AllHealthRecordScreen, including the
/// current allHealthRecordModelObj
class AllHealthRecordController extends GetxController {
  Rx<AllHealthRecordModel> allHealthRecordModelObj = AllHealthRecordModel().obs;
}
