import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userstats_item_model.dart';
import '../models/medicalappointment1_item_model.dart';
import 'package:ridersnew/presentation/home_screen/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
      userstatsItemList: fillUserstatsItemList(),
      dropdownItemList: fillDropdownItemList(),
      medicalappointment1ItemList: fillMedicalappointment1ItemList(),
    )));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<UserstatsItemModel> fillUserstatsItemList() {
    return [
      UserstatsItemModel(
          userInfoButton: ImageConstant.imgInfo,
          userAge: "20",
          samplesDelivered: "Samples Delivered"),
      UserstatsItemModel(
          userInfoButton: ImageConstant.imgCarbonResult,
          userAge: "15",
          samplesDelivered: "Results Collected")
    ];
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

  List<Medicalappointment1ItemModel> fillMedicalappointment1ItemList() {
    return [
      Medicalappointment1ItemModel(
          userName: "SAMP OOOO123",
          appointmentDate: "13/01/2023",
          appointmentTime: "09:00-10:30",
          medicalCentreName: "Life Point Medical Centre"),
      Medicalappointment1ItemModel(
          userName: "SAMP OOOO122",
          appointmentDate: "13/01/2023",
          appointmentTime: "09:00-10:30",
          medicalCentreName: "Life Point Medical Centre"),
      Medicalappointment1ItemModel(
          userName: "SAMP OOOO121",
          appointmentDate: "13/01/2023",
          appointmentTime: "09:00-10:30",
          medicalCentreName: "Life Point Medical Centre"),
      Medicalappointment1ItemModel(
          userName: "SAMP OOOO120",
          appointmentDate: "13/01/2023",
          appointmentTime: "09:00-10:30",
          medicalCentreName: "Life Point Medical Centre"),
      Medicalappointment1ItemModel(
          userName: "SAMP OOOO119",
          appointmentDate: "13/01/2023",
          appointmentTime: "09:00-10:30",
          medicalCentreName: "Life Point Medical Centre"),
      Medicalappointment1ItemModel(
          userName: "SAMP OOOO118",
          appointmentDate: "13/01/2023",
          appointmentTime: "09:00-10:30",
          medicalCentreName: "Life Point Medical Centre")
    ];
  }
}
