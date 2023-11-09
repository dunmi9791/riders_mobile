// ignore_for_file: must_be_immutable

part of 'create_result_form_bloc.dart';

/// Represents the state of CreateResultForm in the application.
class CreateResultFormState extends Equatable {
  CreateResultFormState({
    this.testTypeController,
    this.patientCodeController,
    this.patientCodeController1,
    this.patientCodeController2,
    this.dateController,
    this.totalResultsReceivedController,
    this.nameController,
    this.phoneController,
    this.editTextController,
    this.patientCodeController3,
    this.patientCodeController4,
    this.patientCodeController5,
    this.createResultFormModelObj,
  });

  TextEditingController? testTypeController;

  TextEditingController? patientCodeController;

  TextEditingController? patientCodeController1;

  TextEditingController? patientCodeController2;

  TextEditingController? dateController;

  TextEditingController? totalResultsReceivedController;

  TextEditingController? nameController;

  TextEditingController? phoneController;

  TextEditingController? editTextController;

  TextEditingController? patientCodeController3;

  TextEditingController? patientCodeController4;

  TextEditingController? patientCodeController5;

  CreateResultFormModel? createResultFormModelObj;

  @override
  List<Object?> get props => [
        testTypeController,
        patientCodeController,
        patientCodeController1,
        patientCodeController2,
        dateController,
        totalResultsReceivedController,
        nameController,
        phoneController,
        editTextController,
        patientCodeController3,
        patientCodeController4,
        patientCodeController5,
        createResultFormModelObj,
      ];
  CreateResultFormState copyWith({
    TextEditingController? testTypeController,
    TextEditingController? patientCodeController,
    TextEditingController? patientCodeController1,
    TextEditingController? patientCodeController2,
    TextEditingController? dateController,
    TextEditingController? totalResultsReceivedController,
    TextEditingController? nameController,
    TextEditingController? phoneController,
    TextEditingController? editTextController,
    TextEditingController? patientCodeController3,
    TextEditingController? patientCodeController4,
    TextEditingController? patientCodeController5,
    CreateResultFormModel? createResultFormModelObj,
  }) {
    return CreateResultFormState(
      testTypeController: testTypeController ?? this.testTypeController,
      patientCodeController:
          patientCodeController ?? this.patientCodeController,
      patientCodeController1:
          patientCodeController1 ?? this.patientCodeController1,
      patientCodeController2:
          patientCodeController2 ?? this.patientCodeController2,
      dateController: dateController ?? this.dateController,
      totalResultsReceivedController:
          totalResultsReceivedController ?? this.totalResultsReceivedController,
      nameController: nameController ?? this.nameController,
      phoneController: phoneController ?? this.phoneController,
      editTextController: editTextController ?? this.editTextController,
      patientCodeController3:
          patientCodeController3 ?? this.patientCodeController3,
      patientCodeController4:
          patientCodeController4 ?? this.patientCodeController4,
      patientCodeController5:
          patientCodeController5 ?? this.patientCodeController5,
      createResultFormModelObj:
          createResultFormModelObj ?? this.createResultFormModelObj,
    );
  }
}
