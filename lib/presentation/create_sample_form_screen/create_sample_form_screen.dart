import '../create_sample_form_screen/widgets/seventy_item_widget.dart';
import 'bloc/create_sample_form_bloc.dart';
import 'models/create_sample_form_model.dart';
import 'models/seventy_item_model.dart';
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
class CreateSampleFormScreen extends StatelessWidget {
  CreateSampleFormScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateSampleFormBloc>(
        create: (context) => CreateSampleFormBloc(CreateSampleFormState(
            createSampleFormModelObj: CreateSampleFormModel()))
          ..add(CreateSampleFormInitialEvent()),
        child: CreateSampleFormScreen());
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
                    padding: EdgeInsets.only(top: 19.v),
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
                          _buildNew1(context),
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
                          _buildVector3(context),
                          SizedBox(height: 13.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 35.h, right: 55.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 1.v),
                                            child: Text(
                                                "msg_date_and_time_sent".tr,
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        Text("msg_total_samples_sent2".tr,
                                            style: theme.textTheme.labelLarge)
                                      ]))),
                          SizedBox(height: 9.v),
                          _buildDate1(context),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 35.h),
                                  child: Text("lbl_specimen_type2".tr,
                                      style: theme.textTheme.labelLarge))),
                          SizedBox(height: 9.v),
                          _buildVector4(context),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 35.h),
                                  child: Text("msg_temperature_at_sending2".tr,
                                      style: theme.textTheme.labelLarge))),
                          SizedBox(height: 9.v),
                          _buildTime(context),
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
                          SizedBox(height: 28.v),
                          _buildSampleRejected1(context),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 35.h),
                                  child: Text("lbl_add_a_line".tr,
                                      style: theme.textTheme.labelLarge))),
                          SizedBox(height: 10.v),
                          Container(
                              height: 85.v,
                              width: 305.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.h),
                                  border: Border.all(
                                      color: appTheme.gray700, width: 1.h))),
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
                          _buildVector7(context),
                          SizedBox(height: 13.v),
                          _buildTotalsamplesreceived(context),
                          SizedBox(height: 9.v),
                          _buildVector9(context),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 35.h),
                                  child: Text("msg_temperature_at_receiving".tr,
                                      style: theme.textTheme.labelLarge))),
                          SizedBox(height: 9.v),
                          _buildTime1(context),
                          SizedBox(height: 50.v),
                          _buildCreateSample(context),
                          SizedBox(height: 33.v),
                          SizedBox(
                              width: 168.h,
                              child: Divider(color: appTheme.gray90001))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 35.h, top: 20.v, bottom: 21.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_create_sample".tr, margin: EdgeInsets.only(left: 55.h)));
  }

  /// Section Widget
  Widget _buildNew(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
                    TextEditingController?>(
                selector: (state) => state.newController,
                builder: (context, newController) {
                  return CustomTextFormField(
                      controller: newController,
                      hintText: "lbl_new".tr,
                      hintStyle: theme.textTheme.bodyMedium!,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 9.h, vertical: 11.v));
                })));
  }

  /// Section Widget
  Widget _buildVector(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
                    TextEditingController?>(
                selector: (state) => state.vectorController,
                builder: (context, vectorController) {
                  return CustomTextFormField(
                      controller: vectorController,
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
  Widget _buildNew1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildNew(context), _buildVector(context)]));
  }

  /// Section Widget
  Widget _buildVector1(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
                    TextEditingController?>(
                selector: (state) => state.vectorController1,
                builder: (context, vectorController1) {
                  return CustomTextFormField(
                      controller: vectorController1,
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
  Widget _buildVector2(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
                    TextEditingController?>(
                selector: (state) => state.vectorController2,
                builder: (context, vectorController2) {
                  return CustomTextFormField(
                      controller: vectorController2,
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
  Widget _buildVector3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildVector1(context), _buildVector2(context)]));
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
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
  Widget _buildEighty(BuildContext context) {
    return BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
            TextEditingController?>(
        selector: (state) => state.eightyController,
        builder: (context, eightyController) {
          return CustomTextFormField(
              width: 128.h,
              controller: eightyController,
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
          _buildEighty(context)
        ]));
  }

  /// Section Widget
  Widget _buildVector4(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
                TextEditingController?>(
            selector: (state) => state.vectorController3,
            builder: (context, vectorController3) {
              return CustomTextFormField(
                  controller: vectorController3,
                  hintText: "lbl_select".tr,
                  suffix: Container(
                      padding: EdgeInsets.fromLTRB(30.h, 20.v, 9.h, 16.v),
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
            }));
  }

  /// Section Widget
  Widget _buildTime(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
                TextEditingController?>(
            selector: (state) => state.timeController,
            builder: (context, timeController) {
              return CustomTextFormField(
                  controller: timeController,
                  hintText: "lbl_0_00".tr,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 9.h, vertical: 12.v));
            }));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
            TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomTextFormField(
              width: 128.h,
              controller: nameController,
              hintText: "lbl_enter_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v));
        });
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
            TextEditingController?>(
        selector: (state) => state.phoneController,
        builder: (context, phoneController) {
          return CustomTextFormField(
              width: 128.h,
              controller: phoneController,
              alignment: Alignment.center);
        });
  }

  /// Section Widget
  Widget _buildName1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildName(context),
          SizedBox(
              height: 41.v,
              width: 128.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 11.h, top: 12.v),
                        child: Text("lbl_000_000_000".tr,
                            style: CustomTextStyles.bodySmallGray400))),
                _buildPhone(context)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildSampleRejected(BuildContext context) {
    return CustomOutlinedButton(
        width: 84.h,
        text: "lbl_sample_rejected".tr,
        margin: EdgeInsets.only(left: 5.h));
  }

  /// Section Widget
  Widget _buildSampleRejected1(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
                  CreateSampleFormModel?>(
              selector: (state) => state.createSampleFormModelObj,
              builder: (context, createSampleFormModelObj) {
                return Wrap(
                    runSpacing: 5.v,
                    spacing: 5.h,
                    children: List<Widget>.generate(
                        createSampleFormModelObj?.seventyItemList.length ?? 0,
                        (index) {
                      SeventyItemModel model =
                          createSampleFormModelObj?.seventyItemList[index] ??
                              SeventyItemModel();
                      return SeventyItemWidget(model,
                          onSelectedChipView: (value) {
                        context.read<CreateSampleFormBloc>().add(
                            UpdateChipViewEvent(
                                index: index, isSelected: value));
                      });
                    }));
              }),
          _buildSampleRejected(context)
        ])));
  }

  /// Section Widget
  Widget _buildVector5(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
                    TextEditingController?>(
                selector: (state) => state.vectorController4,
                builder: (context, vectorController4) {
                  return CustomTextFormField(
                      controller: vectorController4,
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
  Widget _buildVector6(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
                    TextEditingController?>(
                selector: (state) => state.vectorController5,
                builder: (context, vectorController5) {
                  return CustomTextFormField(
                      controller: vectorController5,
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
  Widget _buildVector7(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildVector5(context), _buildVector6(context)]));
  }

  /// Section Widget
  Widget _buildTotalsamplesreceived(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text("msg_total_samples_received2".tr,
                  style: theme.textTheme.labelLarge)),
          Text("msg_date_and_time_received2".tr,
              style: theme.textTheme.labelLarge)
        ]));
  }

  /// Section Widget
  Widget _buildVector8(BuildContext context) {
    return BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
            TextEditingController?>(
        selector: (state) => state.vectorController6,
        builder: (context, vectorController6) {
          return CustomTextFormField(
              width: 128.h,
              controller: vectorController6,
              hintText: "lbl_select".tr,
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
  Widget _buildVector9(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildVector8(context),
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
  Widget _buildTime1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: BlocSelector<CreateSampleFormBloc, CreateSampleFormState,
                TextEditingController?>(
            selector: (state) => state.timeController1,
            builder: (context, timeController1) {
              return CustomTextFormField(
                  controller: timeController1,
                  hintText: "lbl_0_00".tr,
                  textInputAction: TextInputAction.done,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 9.h, vertical: 13.v));
            }));
  }

  /// Section Widget
  Widget _buildCreateSample(BuildContext context) {
    return CustomElevatedButton(
        width: 244.h,
        text: "lbl_create_sample".tr,
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapCreateSample(context);
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the confirmationSuccessScreen when the action is triggered.
  onTapCreateSample(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.confirmationSuccessScreen,
    );
  }
}
