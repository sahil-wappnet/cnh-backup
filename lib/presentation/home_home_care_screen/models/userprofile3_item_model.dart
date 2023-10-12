import '../../../core/app_export.dart';/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {Userprofile3ItemModel({this.userName, this.userExperience, this.userRating, this.id, }) { userName = userName  ?? Rx("Sujata");userExperience = userExperience  ?? Rx("10 Years Experience");userRating = userRating  ?? Rx("4.5");id = id  ?? Rx(""); }

Rx<String>? userName;

Rx<String>? userExperience;

Rx<String>? userRating;

Rx<String>? id;

 }
