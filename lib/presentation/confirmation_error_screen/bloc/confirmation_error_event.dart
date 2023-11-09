// ignore_for_file: must_be_immutable

part of 'confirmation_error_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ConfirmationError widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConfirmationErrorEvent extends Equatable {}

/// Event that is dispatched when the ConfirmationError widget is first created.
class ConfirmationErrorInitialEvent extends ConfirmationErrorEvent {
  @override
  List<Object?> get props => [];
}
