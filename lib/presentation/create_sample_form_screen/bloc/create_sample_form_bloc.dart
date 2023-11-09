import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/seventy_item_model.dart';
import 'package:ridersnew/presentation/create_sample_form_screen/models/create_sample_form_model.dart';
part 'create_sample_form_event.dart';
part 'create_sample_form_state.dart';

/// A bloc that manages the state of a CreateSampleForm according to the event that is dispatched to it.
class CreateSampleFormBloc
    extends Bloc<CreateSampleFormEvent, CreateSampleFormState> {
  CreateSampleFormBloc(CreateSampleFormState initialState)
      : super(initialState) {
    on<CreateSampleFormInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<CreateSampleFormState> emit,
  ) {
    List<SeventyItemModel> newList = List<SeventyItemModel>.from(
        state.createSampleFormModelObj!.seventyItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        createSampleFormModelObj: state.createSampleFormModelObj
            ?.copyWith(seventyItemList: newList)));
  }

  List<SeventyItemModel> fillSeventyItemList() {
    return List.generate(4, (index) => SeventyItemModel());
  }

  _onInitialize(
    CreateSampleFormInitialEvent event,
    Emitter<CreateSampleFormState> emit,
  ) async {
    emit(state.copyWith(
        newController: TextEditingController(),
        vectorController: TextEditingController(),
        vectorController1: TextEditingController(),
        vectorController2: TextEditingController(),
        dateController: TextEditingController(),
        eightyController: TextEditingController(),
        vectorController3: TextEditingController(),
        timeController: TextEditingController(),
        nameController: TextEditingController(),
        phoneController: TextEditingController(),
        vectorController4: TextEditingController(),
        vectorController5: TextEditingController(),
        vectorController6: TextEditingController(),
        timeController1: TextEditingController()));
    emit(state.copyWith(
        createSampleFormModelObj: state.createSampleFormModelObj
            ?.copyWith(seventyItemList: fillSeventyItemList())));
  }
}
