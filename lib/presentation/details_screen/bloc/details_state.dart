// ignore_for_file: must_be_immutable

part of 'details_bloc.dart';

/// Represents the state of Details in the application.
class DetailsState extends Equatable {
  DetailsState({
    this.materialsymbolscheckboxoutline = false,
    this.code = false,
    this.materialsymbolscheckboxoutline1 = false,
    this.code1 = false,
    this.materialsymbolscheckboxoutline2 = false,
    this.code2 = false,
    this.detailsModelObj,
  });

  DetailsModel? detailsModelObj;

  bool materialsymbolscheckboxoutline;

  bool code;

  bool materialsymbolscheckboxoutline1;

  bool code1;

  bool materialsymbolscheckboxoutline2;

  bool code2;

  @override
  List<Object?> get props => [
        materialsymbolscheckboxoutline,
        code,
        materialsymbolscheckboxoutline1,
        code1,
        materialsymbolscheckboxoutline2,
        code2,
        detailsModelObj,
      ];
  DetailsState copyWith({
    bool? materialsymbolscheckboxoutline,
    bool? code,
    bool? materialsymbolscheckboxoutline1,
    bool? code1,
    bool? materialsymbolscheckboxoutline2,
    bool? code2,
    DetailsModel? detailsModelObj,
  }) {
    return DetailsState(
      materialsymbolscheckboxoutline:
          materialsymbolscheckboxoutline ?? this.materialsymbolscheckboxoutline,
      code: code ?? this.code,
      materialsymbolscheckboxoutline1: materialsymbolscheckboxoutline1 ??
          this.materialsymbolscheckboxoutline1,
      code1: code1 ?? this.code1,
      materialsymbolscheckboxoutline2: materialsymbolscheckboxoutline2 ??
          this.materialsymbolscheckboxoutline2,
      code2: code2 ?? this.code2,
      detailsModelObj: detailsModelObj ?? this.detailsModelObj,
    );
  }
}
