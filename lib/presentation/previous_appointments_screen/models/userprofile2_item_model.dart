import '../../../core/app_export.dart';/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {Userprofile2ItemModel({this.userName, this.userSpecialty, this.id, }) { userName = userName  ?? Rx("Dr. Joy");userSpecialty = userSpecialty  ?? Rx("Heart Specialist");id = id  ?? Rx(""); }

Rx<String>? userName;

Rx<String>? userSpecialty;

Rx<String>? id;

 }
