import '../../../core/app_export.dart';/// This class is used in the [userorder_item_widget] screen.
class UserorderItemModel {UserorderItemModel({this.userName, this.delivered, this.id, }) { userName = userName  ?? Rx("Octoxid");delivered = delivered  ?? Rx("Delivered");id = id  ?? Rx(""); }

Rx<String>? userName;

Rx<String>? delivered;

Rx<String>? id;

 }
