/// This class is used in the [profilescreen_item_widget] screen.
class ProfilescreenItemModel {
  ProfilescreenItemModel({
    this.sampoooo,
    this.dateRange,
    this.lifePointMedical,
    this.received,
    this.id,
  }) {
    sampoooo = sampoooo ?? "SAMP OOOO123";
    dateRange = dateRange ?? "09:00-10:30";
    lifePointMedical = lifePointMedical ?? "Life Point Medical Centre";
    received = received ?? "Received";
    id = id ?? "";
  }

  String? sampoooo;

  String? dateRange;

  String? lifePointMedical;

  String? received;

  String? id;
}
