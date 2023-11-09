import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userappointment2_item_model.dart';
import 'package:ridersnew/presentation/result_screen/models/result_model.dart';
part 'result_event.dart';
part 'result_state.dart';

/// A bloc that manages the state of a Result according to the event that is dispatched to it.
class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc(ResultState initialState) : super(initialState) {
    on<ResultInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResultInitialEvent event,
    Emitter<ResultState> emit,
  ) async {
    emit(state.copyWith(
        resultModelObj: state.resultModelObj?.copyWith(
            userappointment2ItemList: fillUserappointment2ItemList())));
  }

  List<Userappointment2ItemModel> fillUserappointment2ItemList() {
    return [
      Userappointment2ItemModel(
          userName: "RES OOOO123",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment2ItemModel(
          userName: "RES OOOO122",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment2ItemModel(
          userName: "RES OOOO121",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment2ItemModel(
          userName: "RES OOOO120",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment2ItemModel(
          userName: "RES OOOO119",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment2ItemModel(
          userName: "RES OOOO118",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment2ItemModel(
          userName: "RES OOOO117",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment2ItemModel(
          userName: "RES OOOO116",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre"),
      Userappointment2ItemModel(
          userName: "RES OOOO115",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre")
    ];
  }
}
