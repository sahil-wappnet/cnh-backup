import '../../../core/app_export.dart';import 'userprofilerow_item_model.dart';/// This class defines the variables used in the [caregiver_details_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CaregiverDetailsModel {Rx<List<UserprofilerowItemModel>> userprofilerowItemList = Rx(List.generate(2,(index) => UserprofilerowItemModel()));

 }
