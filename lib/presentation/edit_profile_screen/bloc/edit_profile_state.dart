// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.fullNameController,
    this.emailController,
    this.phoneNumberController,
    this.editProfileModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        emailController,
        phoneNumberController,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
