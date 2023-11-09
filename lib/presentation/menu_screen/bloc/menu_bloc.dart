import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userappointment_item_model.dart';
import 'package:ridersnew/presentation/menu_screen/models/menu_model.dart';
part 'menu_event.dart';
part 'menu_state.dart';

/// A bloc that manages the state of a Menu according to the event that is dispatched to it.
class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc(MenuState initialState) : super(initialState) {
    on<MenuInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MenuInitialEvent event,
    Emitter<MenuState> emit,
  ) async {
    emit(state.copyWith(
        menuModelObj: state.menuModelObj?.copyWith(
      userappointmentItemList: fillUserappointmentItemList(),
    )));
  }

  List<UserappointmentItemModel> fillUserappointmentItemList() {
    return [
      UserappointmentItemModel(
          userName: "SAMP OOOO123",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre",
          received: "Received"),
      UserappointmentItemModel(
          userName: "SAMP OOOO122",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre",
          received: "Received"),
      UserappointmentItemModel(
          userName: "SAMP OOOO121",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre",
          received: "Cancelled"),
      UserappointmentItemModel(
          userName: "SAMP OOOO120",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre",
          received: "Received"),
      UserappointmentItemModel(
          userName: "SAMP OOOO119",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre",
          received: "Received"),
      UserappointmentItemModel(
          userName: "SAMP OOOO118",
          appointmentTime: "09:00-10:30",
          clinicName: "Life Point Medical Centre",
          received: "Received")
    ];
  }
}
