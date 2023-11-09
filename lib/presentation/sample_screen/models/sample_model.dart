// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userappointment1_item_model.dart';

/// This class defines the variables used in the [sample_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SampleModel extends Equatable {
  SampleModel({this.userappointment1ItemList = const []}) {}

  List<Userappointment1ItemModel> userappointment1ItemList;

  SampleModel copyWith(
      {List<Userappointment1ItemModel>? userappointment1ItemList}) {
    return SampleModel(
      userappointment1ItemList:
          userappointment1ItemList ?? this.userappointment1ItemList,
    );
  }

  @override
  List<Object?> get props => [userappointment1ItemList];
}
