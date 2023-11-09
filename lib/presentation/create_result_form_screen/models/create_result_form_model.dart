// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'patientcode_item_model.dart';

/// This class defines the variables used in the [create_result_form_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CreateResultFormModel extends Equatable {
  CreateResultFormModel({this.patientcodeItemList = const []}) {}

  List<PatientcodeItemModel> patientcodeItemList;

  CreateResultFormModel copyWith(
      {List<PatientcodeItemModel>? patientcodeItemList}) {
    return CreateResultFormModel(
      patientcodeItemList: patientcodeItemList ?? this.patientcodeItemList,
    );
  }

  @override
  List<Object?> get props => [patientcodeItemList];
}
