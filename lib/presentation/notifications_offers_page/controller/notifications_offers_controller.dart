import 'package:sahil_s_application2/core/app_export.dart';
import 'package:sahil_s_application2/presentation/notifications_offers_page/models/notifications_offers_model.dart';

/// A controller class for the NotificationsOffersPage.
///
/// This class manages the state of the NotificationsOffersPage, including the
/// current notificationsOffersModelObj
class NotificationsOffersController extends GetxController {
  NotificationsOffersController(this.notificationsOffersModelObj);

  Rx<NotificationsOffersModel> notificationsOffersModelObj;
}
