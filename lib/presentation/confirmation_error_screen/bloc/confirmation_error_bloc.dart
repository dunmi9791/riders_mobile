import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ridersnew/presentation/confirmation_error_screen/models/confirmation_error_model.dart';
part 'confirmation_error_event.dart';
part 'confirmation_error_state.dart';

/// A bloc that manages the state of a ConfirmationError according to the event that is dispatched to it.
class ConfirmationErrorBloc
    extends Bloc<ConfirmationErrorEvent, ConfirmationErrorState> {
  ConfirmationErrorBloc(ConfirmationErrorState initialState)
      : super(initialState) {
    on<ConfirmationErrorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ConfirmationErrorInitialEvent event,
    Emitter<ConfirmationErrorState> emit,
  ) async {}
}
