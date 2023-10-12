import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<UserprofileItemModel>> userprofileItemList =
      Rx(List.generate(5, (index) => UserprofileItemModel()));
}
