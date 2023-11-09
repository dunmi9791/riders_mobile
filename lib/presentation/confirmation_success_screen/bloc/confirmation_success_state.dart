// ignore_for_file: must_be_immutable

part of 'confirmation_success_bloc.dart';

/// Represents the state of ConfirmationSuccess in the application.
class ConfirmationSuccessState extends Equatable {
  ConfirmationSuccessState({this.confirmationSuccessModelObj});

  ConfirmationSuccessModel? confirmationSuccessModelObj;

  @override
  List<Object?> get props => [
        confirmationSuccessModelObj,
      ];
  ConfirmationSuccessState copyWith(
      {ConfirmationSuccessModel? confirmationSuccessModelObj}) {
    return ConfirmationSuccessState(
      confirmationSuccessModelObj:
          confirmationSuccessModelObj ?? this.confirmationSuccessModelObj,
    );
  }
}
