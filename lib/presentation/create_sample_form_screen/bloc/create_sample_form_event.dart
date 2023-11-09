// ignore_for_file: must_be_immutable

part of 'create_sample_form_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateSampleForm widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateSampleFormEvent extends Equatable {}

/// Event that is dispatched when the CreateSampleForm widget is first created.
class CreateSampleFormInitialEvent extends CreateSampleFormEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends CreateSampleFormEvent {
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
