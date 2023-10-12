import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userName,
    this.userSpeciality,
    this.id,
  }) {
    userName = userName ?? Rx("Dr. Joy");
    userSpeciality = userSpeciality ?? Rx("Heart Specialist in KEM Hospital");
    id = id ?? Rx("");
  }

  Rx<String>? userName;

  Rx<String>? userSpeciality;

  Rx<String>? id;
}
