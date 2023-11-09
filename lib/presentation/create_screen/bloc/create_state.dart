// ignore_for_file: must_be_immutable

part of 'create_bloc.dart';

/// Represents the state of Create in the application.
class CreateState extends Equatable {
  CreateState({
    this.selectedDropDownValue,
    this.createModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  CreateModel? createModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        createModelObj,
      ];
  CreateState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    CreateModel? createModelObj,
  }) {
    return CreateState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      createModelObj: createModelObj ?? this.createModelObj,
    );
  }
}
