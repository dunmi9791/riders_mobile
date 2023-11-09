// ignore_for_file: must_be_immutable

part of 'confirmation_success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ConfirmationSuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConfirmationSuccessEvent extends Equatable {}

/// Event that is dispatched when the ConfirmationSuccess widget is first created.
class ConfirmationSuccessInitialEvent extends ConfirmationSuccessEvent {
  @override
  List<Object?> get props => [];
}
