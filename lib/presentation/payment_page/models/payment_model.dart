import '../../../core/app_export.dart';import 'chipviewgroupsi_item_model.dart';import 'slidercurrentba_item_model.dart';/// This class defines the variables used in the [payment_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentModel {Rx<List<ChipviewgroupsiItemModel>> chipviewgroupsiItemList = Rx(List.generate(3,(index) =>ChipviewgroupsiItemModel()));

Rx<List<SlidercurrentbaItemModel>> slidercurrentbaItemList = Rx(List.generate(1,(index) => SlidercurrentbaItemModel()));

 }
