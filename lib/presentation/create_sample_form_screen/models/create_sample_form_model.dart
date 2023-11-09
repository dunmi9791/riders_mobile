// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'seventy_item_model.dart';

/// This class defines the variables used in the [create_sample_form_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CreateSampleFormModel extends Equatable {
  CreateSampleFormModel({this.seventyItemList = const []}) {}

  List<SeventyItemModel> seventyItemList;

  CreateSampleFormModel copyWith({List<SeventyItemModel>? seventyItemList}) {
    return CreateSampleFormModel(
      seventyItemList: seventyItemList ?? this.seventyItemList,
    );
  }

  @override
  List<Object?> get props => [seventyItemList];
}
