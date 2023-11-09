/// This class is used in the [userappointment_item_widget] screen.
class UserappointmentItemModel {
  UserappointmentItemModel({
    this.userName,
    this.appointmentTime,
    this.clinicName,
    this.received,
    this.id,
  }) {
    userName = userName ?? "SAMP OOOO123";
    appointmentTime = appointmentTime ?? "09:00-10:30";
    clinicName = clinicName ?? "Life Point Medical Centre";
    received = received ?? "Received";
    id = id ?? "";
  }

  String? userName;

  String? appointmentTime;

  String? clinicName;

  String? received;

  String? id;
}
