import '../../../core/app_export.dart';/// This class is used in the [ecgreport_item_widget] screen.
class EcgreportItemModel {EcgreportItemModel({this.ecgText, this.dateText, this.id, }) { ecgText = ecgText  ?? Rx("ECG Report");dateText = dateText  ?? Rx("4 Oct 2023");id = id  ?? Rx(""); }

Rx<String>? ecgText;

Rx<String>? dateText;

Rx<String>? id;

 }
