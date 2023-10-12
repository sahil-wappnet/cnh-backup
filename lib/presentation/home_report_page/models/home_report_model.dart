import '../../../core/app_export.dart';import 'ecgreport_item_model.dart';/// This class defines the variables used in the [home_report_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeReportModel {Rx<List<EcgreportItemModel>> ecgreportItemList = Rx(List.generate(4,(index) => EcgreportItemModel()));

 }
