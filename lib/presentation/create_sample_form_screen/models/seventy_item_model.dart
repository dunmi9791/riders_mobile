// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [seventy_item_widget] screen.
class SeventyItemModel extends Equatable {
  SeventyItemModel({
    this.patientcode,
    this.isSelected,
  }) {
    patientcode = patientcode ?? "Patient code";
    isSelected = isSelected ?? false;
  }

  String? patientcode;

  bool? isSelected;

  SeventyItemModel copyWith({
    String? patientcode,
    bool? isSelected,
  }) {
    return SeventyItemModel(
      patientcode: patientcode ?? this.patientcode,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [patientcode, isSelected];
}
