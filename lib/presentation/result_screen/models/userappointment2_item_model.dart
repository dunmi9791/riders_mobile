/// This class is used in the [userappointment2_item_widget] screen.
class Userappointment2ItemModel {
  Userappointment2ItemModel({
    this.userName,
    this.appointmentTime,
    this.clinicName,
    this.id,
  }) {
    userName = userName ?? "RES OOOO123";
    appointmentTime = appointmentTime ?? "09:00-10:30";
    clinicName = clinicName ?? "Life Point Medical Centre";
    id = id ?? "";
  }

  String? userName;

  String? appointmentTime;

  String? clinicName;

  String? id;
}
