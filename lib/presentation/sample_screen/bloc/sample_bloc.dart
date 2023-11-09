import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userappointment1_item_model.dart';
import 'package:ridersnew/presentation/sample_screen/models/sample_model.dart';
part 'sample_event.dart';
part 'sample_state.dart';

/// A bloc that manages the state of a Sample according to the event that is dispatched to it.
class SampleBloc extends Bloc<SampleEvent, SampleState> {
  SampleBloc(SampleState initialState) : super(initialState) {
    on<SampleInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SampleInitialEvent event,
    Emitter<SampleState> emit,
  ) async {
    emit(state.copyWith(
        sampleModelObj: state.sampleModelObj?.copyWith(
            userappointment1ItemList: fillUserappointment1ItemList())));
  }

  List<Userappointment1ItemModel> fillUserappointment1ItemList() {
    return [
      Userappointment1ItemModel(
          userName: "SAMP OOOO123",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment1ItemModel(
          userName: "SAMP OOOO122",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment1ItemModel(
          userName: "SAMP OOOO121",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment1ItemModel(
          userName: "SAMP OOOO120",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment1ItemModel(
          userName: "SAMP OOOO119",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment1ItemModel(
          userName: "SAMP OOOO118",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment1ItemModel(
          userName: "SAMP OOOO117",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment1ItemModel(
          userName: "SAMP OOOO116",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment1ItemModel(
          userName: "SAMP OOOO115",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre")
    ];
  }
}
