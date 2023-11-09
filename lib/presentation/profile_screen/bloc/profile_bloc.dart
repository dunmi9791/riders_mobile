import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profilescreen_item_model.dart';
import 'package:ridersnew/presentation/profile_screen/models/profile_model.dart';
part 'profile_event.dart';
part 'profile_state.dart';

/// A bloc that manages the state of a Profile according to the event that is dispatched to it.
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(
        profileModelObj: state.profileModelObj?.copyWith(
      profilescreenItemList: fillProfilescreenItemList(),
    )));
  }

  List<ProfilescreenItemModel> fillProfilescreenItemList() {
    return [
      ProfilescreenItemModel(
          sampoooo: "SAMP OOOO123",
          dateRange: "09:00-10:30",
          lifePointMedical: "Life Point Medical Centre",
          received: "Received"),
      ProfilescreenItemModel(
          sampoooo: "SAMP OOOO122",
          dateRange: "09:00-10:30",
          lifePointMedical: "Life Point Medical Centre",
          received: "Received"),
      ProfilescreenItemModel(
          sampoooo: "SAMP OOOO121",
          dateRange: "09:00-10:30",
          lifePointMedical: "Life Point Medical Centre",
          received: "Cancelled"),
      ProfilescreenItemModel(
          sampoooo: "SAMP OOOO120",
          dateRange: "09:00-10:30",
          lifePointMedical: "Life Point Medical Centre",
          received: "Received"),
      ProfilescreenItemModel(
          sampoooo: "SAMP OOOO119",
          dateRange: "09:00-10:30",
          lifePointMedical: "Life Point Medical Centre",
          received: "Received"),
      ProfilescreenItemModel(
          sampoooo: "SAMP OOOO118",
          dateRange: "09:00-10:30",
          lifePointMedical: "Life Point Medical Centre",
          received: "Received")
    ];
  }
}
