// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userappointment_item_model.dart';

/// This class defines the variables used in the [menu_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MenuModel extends Equatable {
  MenuModel({this.userappointmentItemList = const []}) {}

  List<UserappointmentItemModel> userappointmentItemList;

  MenuModel copyWith(
      {List<UserappointmentItemModel>? userappointmentItemList}) {
    return MenuModel(
      userappointmentItemList:
          userappointmentItemList ?? this.userappointmentItemList,
    );
  }

  @override
  List<Object?> get props => [userappointmentItemList];
}
