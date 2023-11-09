// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [patientcode_item_widget] screen.
class PatientcodeItemModel extends Equatable {
  PatientcodeItemModel({
    this.patientcode,
    this.isSelected,
  }) {
    patientcode = patientcode ?? "Patient code";
    isSelected = isSelected ?? false;
  }

  String? patientcode;

  bool? isSelected;

  PatientcodeItemModel copyWith({
    String? patientcode,
    bool? isSelected,
  }) {
    return PatientcodeItemModel(
      patientcode: patientcode ?? this.patientcode,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [patientcode, isSelected];
}
