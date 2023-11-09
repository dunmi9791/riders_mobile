// ignore_for_file: must_be_immutable

part of 'create_sample_form_bloc.dart';

/// Represents the state of CreateSampleForm in the application.
class CreateSampleFormState extends Equatable {
  CreateSampleFormState({
    this.newController,
    this.vectorController,
    this.vectorController1,
    this.vectorController2,
    this.dateController,
    this.eightyController,
    this.vectorController3,
    this.timeController,
    this.nameController,
    this.phoneController,
    this.vectorController4,
    this.vectorController5,
    this.vectorController6,
    this.timeController1,
    this.createSampleFormModelObj,
  });

  TextEditingController? newController;

  TextEditingController? vectorController;

  TextEditingController? vectorController1;

  TextEditingController? vectorController2;

  TextEditingController? dateController;

  TextEditingController? eightyController;

  TextEditingController? vectorController3;

  TextEditingController? timeController;

  TextEditingController? nameController;

  TextEditingController? phoneController;

  TextEditingController? vectorController4;

  TextEditingController? vectorController5;

  TextEditingController? vectorController6;

  TextEditingController? timeController1;

  CreateSampleFormModel? createSampleFormModelObj;

  @override
  List<Object?> get props => [
        newController,
        vectorController,
        vectorController1,
        vectorController2,
        dateController,
        eightyController,
        vectorController3,
        timeController,
        nameController,
        phoneController,
        vectorController4,
        vectorController5,
        vectorController6,
        timeController1,
        createSampleFormModelObj,
      ];
  CreateSampleFormState copyWith({
    TextEditingController? newController,
    TextEditingController? vectorController,
    TextEditingController? vectorController1,
    TextEditingController? vectorController2,
    TextEditingController? dateController,
    TextEditingController? eightyController,
    TextEditingController? vectorController3,
    TextEditingController? timeController,
    TextEditingController? nameController,
    TextEditingController? phoneController,
    TextEditingController? vectorController4,
    TextEditingController? vectorController5,
    TextEditingController? vectorController6,
    TextEditingController? timeController1,
    CreateSampleFormModel? createSampleFormModelObj,
  }) {
    return CreateSampleFormState(
      newController: newController ?? this.newController,
      vectorController: vectorController ?? this.vectorController,
      vectorController1: vectorController1 ?? this.vectorController1,
      vectorController2: vectorController2 ?? this.vectorController2,
      dateController: dateController ?? this.dateController,
      eightyController: eightyController ?? this.eightyController,
      vectorController3: vectorController3 ?? this.vectorController3,
      timeController: timeController ?? this.timeController,
      nameController: nameController ?? this.nameController,
      phoneController: phoneController ?? this.phoneController,
      vectorController4: vectorController4 ?? this.vectorController4,
      vectorController5: vectorController5 ?? this.vectorController5,
      vectorController6: vectorController6 ?? this.vectorController6,
      timeController1: timeController1 ?? this.timeController1,
      createSampleFormModelObj:
          createSampleFormModelObj ?? this.createSampleFormModelObj,
    );
  }
}
