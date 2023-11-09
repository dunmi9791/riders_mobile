// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userappointment2_item_model.dart';

/// This class defines the variables used in the [result_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ResultModel extends Equatable {
  ResultModel({this.userappointment2ItemList = const []}) {}

  List<Userappointment2ItemModel> userappointment2ItemList;

  ResultModel copyWith(
      {List<Userappointment2ItemModel>? userappointment2ItemList}) {
    return ResultModel(
      userappointment2ItemList:
          userappointment2ItemList ?? this.userappointment2ItemList,
    );
  }

  @override
  List<Object?> get props => [userappointment2ItemList];
}
