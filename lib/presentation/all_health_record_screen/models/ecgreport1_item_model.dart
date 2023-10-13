import '../../../core/app_export.dart';/// This class is used in the [ecgreport1_item_widget] screen.
class Ecgreport1ItemModel {Ecgreport1ItemModel({this.ecgReportText, this.dateText, this.id, }) { ecgReportText = ecgReportText  ?? Rx("ECG Report");dateText = dateText  ?? Rx("4 Oct 2023");id = id  ?? Rx(""); }

Rx<String>? ecgReportText;

Rx<String>? dateText;

Rx<String>? id;

 }
