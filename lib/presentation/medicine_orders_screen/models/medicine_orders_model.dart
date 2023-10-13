import '../../../core/app_export.dart';import 'userorder_item_model.dart';/// This class defines the variables used in the [medicine_orders_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MedicineOrdersModel {Rx<List<UserorderItemModel>> userorderItemList = Rx(List.generate(3,(index) => UserorderItemModel()));

 }
