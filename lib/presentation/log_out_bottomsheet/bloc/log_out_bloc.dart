import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ridersnew/presentation/log_out_bottomsheet/models/log_out_model.dart';
part 'log_out_event.dart';
part 'log_out_state.dart';

/// A bloc that manages the state of a LogOut according to the event that is dispatched to it.
class LogOutBloc extends Bloc<LogOutEvent, LogOutState> {
  LogOutBloc(LogOutState initialState) : super(initialState) {
    on<LogOutInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LogOutInitialEvent event,
    Emitter<LogOutState> emit,
  ) async {}
}
