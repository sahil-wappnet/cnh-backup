import '../../../core/app_export.dart';/// This class is used in the [userprofilerow_item_widget] screen.
class UserprofilerowItemModel {UserprofilerowItemModel({this.userName, this.userDescription, this.userRatingText, this.id, }) { userName = userName  ?? Rx("Sujoy");userDescription = userDescription  ?? Rx("Nice nurse");userRatingText = userRatingText  ?? Rx("4.7");id = id  ?? Rx(""); }

Rx<String>? userName;

Rx<String>? userDescription;

Rx<String>? userRatingText;

Rx<String>? id;

 }
