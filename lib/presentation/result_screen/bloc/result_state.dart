// ignore_for_file: must_be_immutable

part of 'result_bloc.dart';

/// Represents the state of Result in the application.
class ResultState extends Equatable {
  ResultState({this.resultModelObj});

  ResultModel? resultModelObj;

  @override
  List<Object?> get props => [
        resultModelObj,
      ];
  ResultState copyWith({ResultModel? resultModelObj}) {
    return ResultState(
      resultModelObj: resultModelObj ?? this.resultModelObj,
    );
  }
}
