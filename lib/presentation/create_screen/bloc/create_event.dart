// ignore_for_file: must_be_immutable

part of 'create_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Create widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateEvent extends Equatable {}

/// Event that is dispatched when the Create widget is first created.
class CreateInitialEvent extends CreateEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends CreateEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
