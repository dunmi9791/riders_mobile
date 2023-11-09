// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userstats_item_model.dart';
import 'package:ridersnew/data/models/selectionPopupModel/selection_popup_model.dart';
import 'medicalappointment1_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.userstatsItemList = const [],
    this.dropdownItemList = const [],
    this.medicalappointment1ItemList = const [],
  }) {}

  List<UserstatsItemModel> userstatsItemList;

  List<SelectionPopupModel> dropdownItemList;

  List<Medicalappointment1ItemModel> medicalappointment1ItemList;

  HomeModel copyWith({
    List<UserstatsItemModel>? userstatsItemList,
    List<SelectionPopupModel>? dropdownItemList,
    List<Medicalappointment1ItemModel>? medicalappointment1ItemList,
  }) {
    return HomeModel(
      userstatsItemList: userstatsItemList ?? this.userstatsItemList,
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      medicalappointment1ItemList:
          medicalappointment1ItemList ?? this.medicalappointment1ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [userstatsItemList, dropdownItemList, medicalappointment1ItemList];
}
