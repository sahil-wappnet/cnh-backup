import '../controller/manage_family_members_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ManageFamilyMembersScreen.
///
/// This class ensures that the ManageFamilyMembersController is created when the
/// ManageFamilyMembersScreen is first loaded.
class ManageFamilyMembersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManageFamilyMembersController());
  }
}
