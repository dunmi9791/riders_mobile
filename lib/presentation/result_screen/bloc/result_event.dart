// ignore_for_file: must_be_immutable

part of 'result_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Result widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResultEvent extends Equatable {}

/// Event that is dispatched when the Result widget is first created.
class ResultInitialEvent extends ResultEvent {
  @override
  List<Object?> get props => [];
}
