// ignore_for_file: must_be_immutable

part of 'log_out_bloc.dart';

/// Represents the state of LogOut in the application.
class LogOutState extends Equatable {
  LogOutState({this.logOutModelObj});

  LogOutModel? logOutModelObj;

  @override
  List<Object?> get props => [
        logOutModelObj,
      ];
  LogOutState copyWith({LogOutModel? logOutModelObj}) {
    return LogOutState(
      logOutModelObj: logOutModelObj ?? this.logOutModelObj,
    );
  }
}
