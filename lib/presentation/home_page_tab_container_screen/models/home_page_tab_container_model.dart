import '../../../core/app_export.dart';
import 'appointmentlist_item_model.dart';

/// This class defines the variables used in the [home_page_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomePageTabContainerModel {
  Rx<List<AppointmentlistItemModel>> appointmentlistItemList =
      Rx(List.generate(1, (index) => AppointmentlistItemModel()));
}
