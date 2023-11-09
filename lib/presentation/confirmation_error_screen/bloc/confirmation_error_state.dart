// ignore_for_file: must_be_immutable

part of 'confirmation_error_bloc.dart';

/// Represents the state of ConfirmationError in the application.
class ConfirmationErrorState extends Equatable {
  ConfirmationErrorState({this.confirmationErrorModelObj});

  ConfirmationErrorModel? confirmationErrorModelObj;

  @override
  List<Object?> get props => [
        confirmationErrorModelObj,
      ];
  ConfirmationErrorState copyWith(
      {ConfirmationErrorModel? confirmationErrorModelObj}) {
    return ConfirmationErrorState(
      confirmationErrorModelObj:
          confirmationErrorModelObj ?? this.confirmationErrorModelObj,
    );
  }
}
