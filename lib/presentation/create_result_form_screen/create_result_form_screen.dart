import '../create_result_form_screen/widgets/patientcode_item_widget.dart';
import 'bloc/create_result_form_bloc.dart';
import 'models/create_result_form_model.dart';
import 'models/patientcode_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/core/utils/validation_functions.dart';
import 'package:ridersnew/widgets/app_bar/appbar_leading_image.dart';
import 'package:ridersnew/widgets/app_bar/appbar_title.dart';
import 'package:ridersnew/widgets/app_bar/custom_app_bar.dart';
import 'package:ridersnew/widgets/custom_elevated_button.dart';
import 'package:ridersnew/widgets/custom_outlined_button.dart';
import 'package:ridersnew/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreateResultFormScreen extends StatelessWidget {
  CreateResultFormScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateResultFormBloc>(
        create: (context) => CreateResultFormBloc(CreateResultFormState(
            createResultFormModelObj: CreateResultFormModel()))
          ..add(CreateResultFormInitialEvent()),
        child: CreateResultFormScreen());
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
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 21.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 35.h),
                                  child: Row(children: [
                                    Text("msg_sample_transport2".tr,
                                        style: theme.textTheme.labelLarge),
                                    Padding(
                                        padding: EdgeInsets.only(left: 54.h),
                                        child: Text("lbl_test_type2".tr,
                                            style: theme.textTheme.labelLarge))
                                  ]))),
                          SizedBox(height: 9.v),
                          _buildTestType1(context),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 35.h),
                                  child: Row(children: [
                                    Text("msg_sending_facility2".tr,
                                        style: theme.textTheme.labelLarge),
                                    Padding(
                                        padding: EdgeInsets.only(left: 85.h),
                                        child: Text("lbl_sending_staff2".tr,
                                            style: theme.textTheme.labelLarge))
                                  ]))),
                          SizedBox(height: 9.v),
                          _buildPatientCode3(context),
                          SizedBox(height: 13.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 35.h, right: 62.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("msg_date_and_time_sent".tr,
                                            style: theme.textTheme.labelLarge),
                                        Text("msg_total_results_sent".tr,
                                            style: theme.textTheme.labelLarge)
                                      ]))),
                          SizedBox(height: 10.v),
                          _buildDate1(context),
                          SizedBox(height: 13.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 35.h, right: 101.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 1.v),
                                            child: Text("lbl_3pl_name2".tr,
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        Text("lbl_3pl_phone2".tr,
                                            style: theme.textTheme.labelLarge)
                                      ]))),
                          SizedBox(height: 9.v),
                          _buildName1(context),
                          SizedBox(height: 22.v),
                          _buildResultsRejected1(context),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 35.h),
                                  child: Text("lbl_add_a_line".tr,
                                      style: theme.textTheme.labelLarge))),
                          SizedBox(height: 10.v),
                          _buildEditText(context),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 35.h, right: 76.h),
                                  child: Row(children: [
                                    Text("msg_receiving_facility2".tr,
                                        style: theme.textTheme.labelLarge),
                                    Padding(
                                        padding: EdgeInsets.only(left: 75.h),
                                        child: Text("lbl_receiving_staff".tr,
                                            style: theme.textTheme.labelLarge))
                                  ]))),
                          SizedBox(height: 9.v),
                          _buildPatientCode6(context),
                          SizedBox(height: 13.v),
                          _buildTotalresultsreceived(context),
                          SizedBox(height: 10.v),
                          _buildPatientCode8(context),
                          SizedBox(height: 50.v),
                          _buildCreateResult(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 35.h, top: 22.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_create_result".tr, margin: EdgeInsets.only(left: 55.h)));
  }

  /// Section Widget
  Widget _buildTestType(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: BlocSelector<CreateResultFormBloc, CreateResultFormState,
                    TextEditingController?>(
                selector: (state) => state.testTypeController,
                builder: (context, testTypeController) {
                  return CustomTextFormField(
                      controller: testTypeController,
                      hintText: "lbl_new".tr,
                      hintStyle: theme.textTheme.bodyMedium!,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 9.h, vertical: 11.v));
                })));
  }

  /// Section Widget
  Widget _buildPatientCode(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: BlocSelector<CreateResultFormBloc, CreateResultFormState,
                    TextEditingController?>(
                selector: (state) => state.patientCodeController,
                builder: (context, patientCodeController) {
                  return CustomTextFormField(
                      controller: patientCodeController,
                      hintText: "lbl_select".tr,
                      suffix: Container(
                          padding: EdgeInsets.fromLTRB(30.h, 19.v, 13.h, 17.v),
                          margin: EdgeInsets.only(),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.h),
                              border: Border.all(
                                  color: appTheme.blueGray900, width: 1.h)),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 5.v,
                              width: 9.h)),
                      suffixConstraints: BoxConstraints(maxHeight: 41.v));
                })));
  }

  /// Section Widget
  Widget _buildTestType1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildTestType(context), _buildPatientCode(context)]));
  }

  /// Section Widget
  Widget _buildPatientCode1(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: BlocSelector<CreateResultFormBloc, CreateResultFormState,
                    TextEditingController?>(
                selector: (state) => state.patientCodeController1,
                builder: (context, patientCodeController1) {
                  return CustomTextFormField(
                      controller: patientCodeController1,
                      hintText: "lbl_select".tr,
                      suffix: Container(
                          padding: EdgeInsets.fromLTRB(30.h, 17.v, 13.h, 19.v),
                          margin: EdgeInsets.only(),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.h),
                              border: Border.all(
                                  color: appTheme.blueGray900, width: 1.h)),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 5.v,
                              width: 9.h)),
                      suffixConstraints: BoxConstraints(maxHeight: 41.v));
                })));
  }

  /// Section Widget
  Widget _buildPatientCode2(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: BlocSelector<CreateResultFormBloc, CreateResultFormState,
                    TextEditingController?>(
                selector: (state) => state.patientCodeController2,
                builder: (context, patientCodeController2) {
                  return CustomTextFormField(
                      controller: patientCodeController2,
                      hintText: "lbl_select".tr,
                      suffix: Container(
                          padding: EdgeInsets.fromLTRB(30.h, 17.v, 13.h, 19.v),
                          margin: EdgeInsets.only(),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.h),
                              border: Border.all(
                                  color: appTheme.blueGray900, width: 1.h)),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 5.v,
                              width: 9.h)),
                      suffixConstraints: BoxConstraints(maxHeight: 41.v));
                })));
  }

  /// Section Widget
  Widget _buildPatientCode3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildPatientCode1(context),
          _buildPatientCode2(context)
        ]));
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return BlocSelector<CreateResultFormBloc, CreateResultFormState,
            TextEditingController?>(
        selector: (state) => state.dateController,
        builder: (context, dateController) {
          return CustomTextFormField(
              width: 128.h,
              controller: dateController,
              alignment: Alignment.center,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 14.v, 13.h, 14.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 13.v,
                      width: 11.h)),
              suffixConstraints: BoxConstraints(maxHeight: 41.v));
        });
  }

  /// Section Widget
  Widget _buildTotalResultsReceived(BuildContext context) {
    return BlocSelector<CreateResultFormBloc, CreateResultFormState,
            TextEditingController?>(
        selector: (state) => state.totalResultsReceivedController,
        builder: (context, totalResultsReceivedController) {
          return CustomTextFormField(
              width: 128.h,
              controller: totalResultsReceivedController,
              hintText: "lbl_0".tr,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v));
        });
  }

  /// Section Widget
  Widget _buildDate1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 41.v,
              width: 128.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 11.h),
                        child: Text("lbl_select".tr,
                            style: CustomTextStyles.bodySmallGray400))),
                _buildDate(context)
              ])),
          _buildTotalResultsReceived(context)
        ]));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: BlocSelector<CreateResultFormBloc, CreateResultFormState,
                    TextEditingController?>(
                selector: (state) => state.nameController,
                builder: (context, nameController) {
                  return CustomTextFormField(
                      controller: nameController,
                      hintText: "lbl_enter_name".tr,
                      validator: (value) {
                        if (!isText(value)) {
                          return "err_msg_please_enter_valid_text".tr;
                        }
                        return null;
                      },
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 11.h, vertical: 12.v));
                })));
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: BlocSelector<CreateResultFormBloc, CreateResultFormState,
                    TextEditingController?>(
                selector: (state) => state.phoneController,
                builder: (context, phoneController) {
                  return CustomTextFormField(
                      controller: phoneController,
                      hintText: "lbl_000_000_000".tr,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 11.h, vertical: 13.v));
                })));
  }

  /// Section Widget
  Widget _buildName1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildName(context), _buildPhone(context)]));
  }

  /// Section Widget
  Widget _buildResultsRejected(BuildContext context) {
    return CustomOutlinedButton(
        width: 84.h,
        text: "msg_results_rejected".tr,
        margin: EdgeInsets.only(left: 5.h));
  }

  /// Section Widget
  Widget _buildResultsRejected1(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          BlocSelector<CreateResultFormBloc, CreateResultFormState,
                  CreateResultFormModel?>(
              selector: (state) => state.createResultFormModelObj,
              builder: (context, createResultFormModelObj) {
                return Wrap(
                    runSpacing: 5.v,
                    spacing: 5.h,
                    children: List<Widget>.generate(
                        createResultFormModelObj?.patientcodeItemList.length ??
                            0, (index) {
                      PatientcodeItemModel model = createResultFormModelObj
                              ?.patientcodeItemList[index] ??
                          PatientcodeItemModel();
                      return PatientcodeItemWidget(model,
                          onSelectedChipView: (value) {
                        context.read<CreateResultFormBloc>().add(
                            UpdateChipViewEvent(
                                index: index, isSelected: value));
                      });
                    }));
              }),
          _buildResultsRejected(context)
        ])));
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: BlocSelector<CreateResultFormBloc, CreateResultFormState,
                TextEditingController?>(
            selector: (state) => state.editTextController,
            builder: (context, editTextController) {
              return CustomTextFormField(controller: editTextController);
            }));
  }

  /// Section Widget
  Widget _buildPatientCode4(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: BlocSelector<CreateResultFormBloc, CreateResultFormState,
                    TextEditingController?>(
                selector: (state) => state.patientCodeController3,
                builder: (context, patientCodeController3) {
                  return CustomTextFormField(
                      controller: patientCodeController3,
                      hintText: "lbl_select".tr,
                      suffix: Container(
                          padding: EdgeInsets.fromLTRB(30.h, 17.v, 13.h, 19.v),
                          margin: EdgeInsets.only(),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.h),
                              border: Border.all(
                                  color: appTheme.blueGray900, width: 1.h)),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 5.v,
                              width: 9.h)),
                      suffixConstraints: BoxConstraints(maxHeight: 41.v));
                })));
  }

  /// Section Widget
  Widget _buildPatientCode5(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: BlocSelector<CreateResultFormBloc, CreateResultFormState,
                    TextEditingController?>(
                selector: (state) => state.patientCodeController4,
                builder: (context, patientCodeController4) {
                  return CustomTextFormField(
                      controller: patientCodeController4,
                      hintText: "lbl_select".tr,
                      suffix: Container(
                          padding: EdgeInsets.fromLTRB(30.h, 17.v, 13.h, 19.v),
                          margin: EdgeInsets.only(),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.h),
                              border: Border.all(
                                  color: appTheme.blueGray900, width: 1.h)),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 5.v,
                              width: 9.h)),
                      suffixConstraints: BoxConstraints(maxHeight: 41.v));
                })));
  }

  /// Section Widget
  Widget _buildPatientCode6(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildPatientCode4(context),
          _buildPatientCode5(context)
        ]));
  }

  /// Section Widget
  Widget _buildTotalresultsreceived(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("msg_total_results_received".tr,
              style: theme.textTheme.labelLarge),
          Text("msg_date_and_time_received2".tr,
              style: theme.textTheme.labelLarge)
        ]));
  }

  /// Section Widget
  Widget _buildPatientCode7(BuildContext context) {
    return BlocSelector<CreateResultFormBloc, CreateResultFormState,
            TextEditingController?>(
        selector: (state) => state.patientCodeController5,
        builder: (context, patientCodeController5) {
          return CustomTextFormField(
              width: 128.h,
              controller: patientCodeController5,
              hintText: "lbl_select".tr,
              textInputAction: TextInputAction.done,
              suffix: Container(
                  padding: EdgeInsets.fromLTRB(30.h, 17.v, 13.h, 19.v),
                  margin: EdgeInsets.only(),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.h),
                      border:
                          Border.all(color: appTheme.blueGray900, width: 1.h)),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 5.v,
                      width: 9.h)),
              suffixConstraints: BoxConstraints(maxHeight: 41.v));
        });
  }

  /// Section Widget
  Widget _buildPatientCode8(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildPatientCode7(context),
          SizedBox(
              height: 41.v,
              width: 128.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 11.h, top: 12.v),
                        child: Text("lbl_select".tr,
                            style: CustomTextStyles.bodySmallGray400))),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 41.v,
                        width: 128.h,
                        padding: EdgeInsets.all(13.h),
                        decoration: AppDecoration.outlineBluegray900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgGroup,
                            height: 13.v,
                            width: 11.h,
                            alignment: Alignment.centerRight)))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildCreateResult(BuildContext context) {
    return CustomElevatedButton(
        width: 244.h,
        text: "lbl_create_result".tr,
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapCreateResult(context);
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the confirmationErrorScreen when the action is triggered.
  onTapCreateResult(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.confirmationErrorScreen,
    );
  }
}
