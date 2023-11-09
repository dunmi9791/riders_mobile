import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ridersnew/presentation/confirmation_success_screen/models/confirmation_success_model.dart';
part 'confirmation_success_event.dart';
part 'confirmation_success_state.dart';

/// A bloc that manages the state of a ConfirmationSuccess according to the event that is dispatched to it.
class ConfirmationSuccessBloc
    extends Bloc<ConfirmationSuccessEvent, ConfirmationSuccessState> {
  ConfirmationSuccessBloc(ConfirmationSuccessState initialState)
      : super(initialState) {
    on<ConfirmationSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ConfirmationSuccessInitialEvent event,
    Emitter<ConfirmationSuccessState> emit,
  ) async {}
}
