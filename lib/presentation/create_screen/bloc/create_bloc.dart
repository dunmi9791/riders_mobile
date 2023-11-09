import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/medicalappointment_item_model.dart';
import 'package:ridersnew/presentation/create_screen/models/create_model.dart';
part 'create_event.dart';
part 'create_state.dart';

/// A bloc that manages the state of a Create according to the event that is dispatched to it.
class CreateBloc extends Bloc<CreateEvent, CreateState> {
  CreateBloc(CreateState initialState) : super(initialState) {
    on<CreateInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    CreateInitialEvent event,
    Emitter<CreateState> emit,
  ) async {
    emit(state.copyWith(
        createModelObj: state.createModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      medicalappointmentItemList: fillMedicalappointmentItemList(),
    )));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<CreateState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<MedicalappointmentItemModel> fillMedicalappointmentItemList() {
    return [
      MedicalappointmentItemModel(
          userName: "SAMP OOOO123",
          appointmentDate: "13/01/2023",
          appointmentTime: "09:00-10:30",
          medicalCentreName: "Life Point Medical Centre"),
      MedicalappointmentItemModel(
          userName: "SAMP OOOO122",
          appointmentDate: "13/01/2023",
          appointmentTime: "09:00-10:30",
          medicalCentreName: "Life Point Medical Centre"),
      MedicalappointmentItemModel(
          userName: "SAMP OOOO121",
          appointmentDate: "13/01/2023",
          appointmentTime: "09:00-10:30",
          medicalCentreName: "Life Point Medical Centre"),
      MedicalappointmentItemModel(
          userName: "SAMP OOOO120",
          appointmentDate: "13/01/2023",
          appointmentTime: "09:00-10:30",
          medicalCentreName: "Life Point Medical Centre"),
      MedicalappointmentItemModel(
          userName: "SAMP OOOO119",
          appointmentDate: "13/01/2023",
          appointmentTime: "09:00-10:30",
          medicalCentreName: "Life Point Medical Centre"),
      MedicalappointmentItemModel(
          userName: "SAMP OOOO118",
          appointmentDate: "13/01/2023",
          appointmentTime: "09:00-10:30",
          medicalCentreName: "Life Point Medical Centre")
    ];
  }
}
