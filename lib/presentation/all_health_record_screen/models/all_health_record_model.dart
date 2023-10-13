import '../../../core/app_export.dart';import 'ecgreport1_item_model.dart';/// This class defines the variables used in the [all_health_record_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AllHealthRecordModel {Rx<List<Ecgreport1ItemModel>> ecgreport1ItemList = Rx(List.generate(5,(index) => Ecgreport1ItemModel()));

 }
