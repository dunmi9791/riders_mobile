/// This class is used in the [medicalappointment_item_widget] screen.
class MedicalappointmentItemModel {
  MedicalappointmentItemModel({
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
