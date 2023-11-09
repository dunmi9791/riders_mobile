// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

/// Represents the state of SignIn in the application.
class SignInState extends Equatable {
  SignInState({
    this.userNameController,
    this.passwordController,
    this.isShowPassword = true,
    this.englishQuestion = false,
    this.signInModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  SignInModel? signInModelObj;

  bool isShowPassword;

  bool englishQuestion;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        isShowPassword,
        englishQuestion,
        signInModelObj,
      ];
  SignInState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? englishQuestion,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      englishQuestion: englishQuestion ?? this.englishQuestion,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
