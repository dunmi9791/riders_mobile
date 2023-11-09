import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ridersnew/presentation/details_screen/models/details_model.dart';
part 'details_event.dart';
part 'details_state.dart';

/// A bloc that manages the state of a Details according to the event that is dispatched to it.
class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc(DetailsState initialState) : super(initialState) {
    on<DetailsInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
    on<ChangeCheckBox3Event>(_changeCheckBox3);
    on<ChangeCheckBox4Event>(_changeCheckBox4);
    on<ChangeCheckBox5Event>(_changeCheckBox5);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<DetailsState> emit,
  ) {
    emit(state.copyWith(materialsymbolscheckboxoutline: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<DetailsState> emit,
  ) {
    emit(state.copyWith(code: event.value));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<DetailsState> emit,
  ) {
    emit(state.copyWith(materialsymbolscheckboxoutline1: event.value));
  }

  _changeCheckBox3(
    ChangeCheckBox3Event event,
    Emitter<DetailsState> emit,
  ) {
    emit(state.copyWith(code1: event.value));
  }

  _changeCheckBox4(
    ChangeCheckBox4Event event,
    Emitter<DetailsState> emit,
  ) {
    emit(state.copyWith(materialsymbolscheckboxoutline2: event.value));
  }

  _changeCheckBox5(
    ChangeCheckBox5Event event,
    Emitter<DetailsState> emit,
  ) {
    emit(state.copyWith(code2: event.value));
  }

  _onInitialize(
    DetailsInitialEvent event,
    Emitter<DetailsState> emit,
  ) async {
    emit(state.copyWith(
        materialsymbolscheckboxoutline: false,
        code: false,
        materialsymbolscheckboxoutline1: false,
        code1: false,
        materialsymbolscheckboxoutline2: false,
        code2: false));
  }
}
