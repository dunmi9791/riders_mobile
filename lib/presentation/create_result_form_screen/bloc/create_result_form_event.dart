// ignore_for_file: must_be_immutable

part of 'create_result_form_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateResultForm widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateResultFormEvent extends Equatable {}

/// Event that is dispatched when the CreateResultForm widget is first created.
class CreateResultFormInitialEvent extends CreateResultFormEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends CreateResultFormEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
