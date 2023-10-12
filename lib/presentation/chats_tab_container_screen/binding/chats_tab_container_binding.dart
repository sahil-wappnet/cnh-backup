import '../controller/chats_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatsTabContainerScreen.
///
/// This class ensures that the ChatsTabContainerController is created when the
/// ChatsTabContainerScreen is first loaded.
class ChatsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatsTabContainerController());
  }
}
