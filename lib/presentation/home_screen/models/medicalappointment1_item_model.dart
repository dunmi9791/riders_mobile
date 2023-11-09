/// This class is used in the [medicalappointment1_item_widget] screen.
class Medicalappointment1ItemModel {
  Medicalappointment1ItemModel({
    this.userName,
    this.appointmentDate,
    this.appointmentTime,
    this.medicalCentreName,
    this.id,
  }) {
    userName = userName ?? "SAMP OOOO123";
    appointmentDate = appointmentDate ?? "13/01/2023";
    appointmentTime = appointmentTime ?? "09:00-10:30";
    medicalCentreName = medicalCentreName ?? "Life Point Medical Centre";
    id = id ?? "";
  }

  String? userName;

  String? appointmentDate;

  String? appointmentTime;

  String? medicalCentreName;

  String? id;
}
