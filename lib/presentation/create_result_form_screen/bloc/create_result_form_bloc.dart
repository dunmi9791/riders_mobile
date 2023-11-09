import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/patientcode_item_model.dart';
import 'package:ridersnew/presentation/create_result_form_screen/models/create_result_form_model.dart';
part 'create_result_form_event.dart';
part 'create_result_form_state.dart';

/// A bloc that manages the state of a CreateResultForm according to the event that is dispatched to it.
class CreateResultFormBloc
    extends Bloc<CreateResultFormEvent, CreateResultFormState> {
  CreateResultFormBloc(CreateResultFormState initialState)
      : super(initialState) {
    on<CreateResultFormInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<CreateResultFormState> emit,
  ) {
    List<PatientcodeItemModel> newList = List<PatientcodeItemModel>.from(
        state.createResultFormModelObj!.patientcodeItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        createResultFormModelObj: state.createResultFormModelObj
            ?.copyWith(patientcodeItemList: newList)));
  }

  List<PatientcodeItemModel> fillPatientcodeItemList() {
    return List.generate(4, (index) => PatientcodeItemModel());
  }

  _onInitialize(
    CreateResultFormInitialEvent event,
    Emitter<CreateResultFormState> emit,
  ) async {
    emit(state.copyWith(
        testTypeController: TextEditingController(),
        patientCodeController: TextEditingController(),
        patientCodeController1: TextEditingController(),
        patientCodeController2: TextEditingController(),
        dateController: TextEditingController(),
        totalResultsReceivedController: TextEditingController(),
        nameController: TextEditingController(),
        phoneController: TextEditingController(),
        editTextController: TextEditingController(),
        patientCodeController3: TextEditingController(),
        patientCodeController4: TextEditingController(),
        patientCodeController5: TextEditingController()));
    emit(state.copyWith(
        createResultFormModelObj: state.createResultFormModelObj
            ?.copyWith(patientcodeItemList: fillPatientcodeItemList())));
  }
}
