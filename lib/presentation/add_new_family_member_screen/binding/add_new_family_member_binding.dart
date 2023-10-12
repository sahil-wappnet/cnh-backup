import '../controller/add_new_family_member_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddNewFamilyMemberScreen.
///
/// This class ensures that the AddNewFamilyMemberController is created when the
/// AddNewFamilyMemberScreen is first loaded.
class AddNewFamilyMemberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewFamilyMemberController());
  }
}
