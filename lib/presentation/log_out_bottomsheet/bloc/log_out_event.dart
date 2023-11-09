// ignore_for_file: must_be_immutable

part of 'log_out_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LogOut widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LogOutEvent extends Equatable {}

/// Event that is dispatched when the LogOut widget is first created.
class LogOutInitialEvent extends LogOutEvent {
  @override
  List<Object?> get props => [];
}
