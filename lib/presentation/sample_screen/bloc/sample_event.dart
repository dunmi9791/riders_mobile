// ignore_for_file: must_be_immutable

part of 'sample_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sample widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SampleEvent extends Equatable {}

/// Event that is dispatched when the Sample widget is first created.
class SampleInitialEvent extends SampleEvent {
  @override
  List<Object?> get props => [];
}
