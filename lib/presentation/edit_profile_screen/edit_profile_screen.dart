import 'bloc/edit_profile_bloc.dart';
import 'models/edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/core/utils/validation_functions.dart';
import 'package:ridersnew/widgets/app_bar/appbar_leading_image.dart';
import 'package:ridersnew/widgets/app_bar/appbar_title.dart';
import 'package:ridersnew/widgets/app_bar/custom_app_bar.dart';
import 'package:ridersnew/widgets/custom_elevated_button.dart';
import 'package:ridersnew/widgets/custom_icon_button.dart';
import 'package:ridersnew/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<EditProfileBloc>(
        create: (context) => EditProfileBloc(
            EditProfileState(editProfileModelObj: EditProfileModel()))
          ..add(EditProfileInitialEvent()),
        child: EditProfileScreen());
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
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 23.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 94.v,
                                  width: 107.h,
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: 94.adaptSize,
                                                width: 94.adaptSize,
                                                padding: EdgeInsets.all(3.h),
                                                decoration:
                                                    AppDecoration.outlinePrimary
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder47),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgUnsplash4yv84vgqkrm85x85,
                                                    height: 85.adaptSize,
                                                    width: 85.adaptSize,
                                                    radius:
                                                        BorderRadius.circular(
                                                            42.h),
                                                    alignment:
                                                        Alignment.center))),
                                        CustomIconButton(
                                            height: 34.adaptSize,
                                            width: 34.adaptSize,
                                            padding: EdgeInsets.all(6.h),
                                            decoration:
                                                IconButtonStyleHelper.fillGray,
                                            alignment: Alignment.bottomRight,
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup2))
                                      ]))),
                          SizedBox(height: 25.v),
                          Text("lbl_full_name".tr,
                              style: CustomTextStyles.bodyMediumGray900),
                          SizedBox(height: 6.v),
                          _buildFullName(context),
                          SizedBox(height: 20.v),
                          Text("lbl_email".tr,
                              style: CustomTextStyles.bodyMediumGray900),
                          SizedBox(height: 6.v),
                          _buildEmail(context),
                          SizedBox(height: 20.v),
                          Text("lbl_phone_number".tr,
                              style: CustomTextStyles.bodyMediumGray900),
                          SizedBox(height: 6.v),
                          _buildPhoneNumber(context),
                          SizedBox(height: 45.v),
                          _buildSave(context),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 35.h, top: 22.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_edit_profile".tr, margin: EdgeInsets.only(left: 55.h)));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 14.h),
        child: BlocSelector<EditProfileBloc, EditProfileState,
                TextEditingController?>(
            selector: (state) => state.fullNameController,
            builder: (context, fullNameController) {
              return CustomTextFormField(
                  controller: fullNameController,
                  hintText: "lbl_your_name".tr,
                  hintStyle: theme.textTheme.bodyLarge!,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v));
            }));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 14.h),
        child: BlocSelector<EditProfileBloc, EditProfileState,
                TextEditingController?>(
            selector: (state) => state.emailController,
            builder: (context, emailController) {
              return CustomTextFormField(
                  controller: emailController,
                  hintText: "msg_youremail_gmail_com".tr,
                  hintStyle: theme.textTheme.bodyLarge!,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v));
            }));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 14.h),
        child: BlocSelector<EditProfileBloc, EditProfileState,
                TextEditingController?>(
            selector: (state) => state.phoneNumberController,
            builder: (context, phoneNumberController) {
              return CustomTextFormField(
                  controller: phoneNumberController,
                  hintText: "lbl_0900_322_67774".tr,
                  hintStyle: theme.textTheme.bodyLarge!,
                  textInputAction: TextInputAction.done,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
                  borderDecoration:
                      TextFormFieldStyleHelper.outlineBlueGrayTL101,
                  fillColor: theme.colorScheme.onErrorContainer.withOpacity(1));
            }));
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save".tr,
        margin: EdgeInsets.only(left: 46.h, right: 45.h),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleLargeOnErrorContainer,
        alignment: Alignment.center);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
