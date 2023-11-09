// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:ridersnew/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'medicalappointment_item_model.dart';

/// This class defines the variables used in the [create_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CreateModel extends Equatable {
  CreateModel({
    this.dropdownItemList = const [],
    this.medicalappointmentItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<MedicalappointmentItemModel> medicalappointmentItemList;

  CreateModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<MedicalappointmentItemModel>? medicalappointmentItemList,
  }) {
    return CreateModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      medicalappointmentItemList:
          medicalappointmentItemList ?? this.medicalappointmentItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, medicalappointmentItemList];
}
