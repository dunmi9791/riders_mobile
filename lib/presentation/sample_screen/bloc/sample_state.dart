// ignore_for_file: must_be_immutable

part of 'sample_bloc.dart';

/// Represents the state of Sample in the application.
class SampleState extends Equatable {
  SampleState({this.sampleModelObj});

  SampleModel? sampleModelObj;

  @override
  List<Object?> get props => [
        sampleModelObj,
      ];
  SampleState copyWith({SampleModel? sampleModelObj}) {
    return SampleState(
      sampleModelObj: sampleModelObj ?? this.sampleModelObj,
    );
  }
}
