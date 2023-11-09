import 'bloc/sign_in_bloc.dart';
import 'models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/core/utils/validation_functions.dart';
import 'package:ridersnew/widgets/app_bar/appbar_leading_image.dart';
import 'package:ridersnew/widgets/app_bar/appbar_subtitle.dart';
import 'package:ridersnew/widgets/app_bar/custom_app_bar.dart';
import 'package:ridersnew/widgets/custom_checkbox_button.dart';
import 'package:ridersnew/widgets/custom_elevated_button.dart';
import 'package:ridersnew/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInBloc>(
        create: (context) =>
            SignInBloc(SignInState(signInModelObj: SignInModel()))
              ..add(SignInInitialEvent()),
        child: SignInScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 35.h, vertical: 32.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("lbl_username".tr,
                                  style:
                                      CustomTextStyles.titleSmallGray80001))),
                      SizedBox(height: 12.v),
                      BlocSelector<SignInBloc, SignInState,
                              TextEditingController?>(
                          selector: (state) => state.userNameController,
                          builder: (context, userNameController) {
                            return CustomTextFormField(
                                controller: userNameController,
                                hintText: "lbl_enter_username".tr,
                                validator: (value) {
                                  if (!isText(value)) {
                                    return "err_msg_please_enter_valid_text".tr;
                                  }
                                  return null;
                                },
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 13.h, vertical: 16.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGreen,
                                fillColor: theme.colorScheme.onErrorContainer);
                          }),
                      SizedBox(height: 21.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("lbl_password".tr,
                                  style:
                                      CustomTextStyles.titleSmallGray80001))),
                      SizedBox(height: 12.v),
                      BlocBuilder<SignInBloc, SignInState>(
                          builder: (context, state) {
                        return CustomTextFormField(
                            controller: state.passwordController,
                            hintText: "lbl_enter_password".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                                onTap: () {
                                  context.read<SignInBloc>().add(
                                      ChangePasswordVisibilityEvent(
                                          value: !state.isShowPassword));
                                },
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        12.h, 21.v, 23.h, 20.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgImage10,
                                        height: 9.adaptSize,
                                        width: 9.adaptSize))),
                            suffixConstraints: BoxConstraints(maxHeight: 50.v),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: state.isShowPassword,
                            contentPadding: EdgeInsets.only(
                                left: 13.h, top: 16.v, bottom: 16.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.outlineGray,
                            fillColor: theme.colorScheme.onErrorContainer);
                      }),
                      SizedBox(height: 19.v),
                      _buildEnglishQuestion(context),
                      SizedBox(height: 57.v),
                      CustomElevatedButton(
                          text: "lbl_log_in".tr,
                          margin: EdgeInsets.only(left: 31.h, right: 30.h),
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle:
                              CustomTextStyles.titleLargeOnErrorContainerBold),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 35.h, top: 19.v, bottom: 22.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "lbl_log_in".tr, margin: EdgeInsets.only(left: 55.h)));
  }

  /// Section Widget
  Widget _buildEnglishQuestion(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      BlocSelector<SignInBloc, SignInState, bool?>(
          selector: (state) => state.englishQuestion,
          builder: (context, englishQuestion) {
            return CustomCheckboxButton(
                text: "lbl_remember_me".tr,
                value: englishQuestion,
                textStyle: theme.textTheme.bodySmall,
                onChange: (value) {
                  context
                      .read<SignInBloc>()
                      .add(ChangeCheckBoxEvent(value: value));
                });
          }),
      Text("msg_forgot_password".tr, style: theme.textTheme.bodySmall)
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
