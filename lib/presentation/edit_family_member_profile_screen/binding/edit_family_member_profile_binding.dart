import '../controller/edit_family_member_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditFamilyMemberProfileScreen.
///
/// This class ensures that the EditFamilyMemberProfileController is created when the
/// EditFamilyMemberProfileScreen is first loaded.
class EditFamilyMemberProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditFamilyMemberProfileController());
  }
}
