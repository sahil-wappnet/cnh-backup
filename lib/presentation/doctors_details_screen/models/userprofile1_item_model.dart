import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.userDescription, this.fortyseven, this.id, }) { userDescription = userDescription  ?? Rx("Nice doctor");fortyseven = fortyseven  ?? Rx("4.7");id = id  ?? Rx(""); }

Rx<String>? userDescription;

Rx<String>? fortyseven;

Rx<String>? id;

 }
