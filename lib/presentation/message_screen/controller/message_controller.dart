import 'package:sahil_s_application2/core/app_export.dart';import 'package:sahil_s_application2/presentation/message_screen/models/message_model.dart';/// A controller class for the MessageScreen.
///
/// This class manages the state of the MessageScreen, including the
/// current messageModelObj
class MessageController extends GetxController {Rx<MessageModel> messageModelObj = MessageModel().obs;

 }
