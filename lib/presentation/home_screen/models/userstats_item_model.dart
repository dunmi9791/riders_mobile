import '../../../core/app_export.dart';

/// This class is used in the [userstats_item_widget] screen.
class UserstatsItemModel {
  UserstatsItemModel({
    this.userInfoButton,
    this.userAge,
    this.samplesDelivered,
    this.id,
  }) {
    userInfoButton = userInfoButton ?? ImageConstant.imgInfo;
    userAge = userAge ?? "20";
    samplesDelivered = samplesDelivered ?? "Samples Delivered";
    id = id ?? "";
  }

  String? userInfoButton;

  String? userAge;

  String? samplesDelivered;

  String? id;
}
