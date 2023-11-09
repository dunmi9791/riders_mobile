import 'bloc/details_bloc.dart';
import 'models/details_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/widgets/app_bar/appbar_leading_image.dart';
import 'package:ridersnew/widgets/app_bar/appbar_title.dart';
import 'package:ridersnew/widgets/app_bar/custom_app_bar.dart';
import 'package:ridersnew/widgets/custom_checkbox_button.dart';
import 'package:ridersnew/widgets/custom_outlined_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailsBloc>(
        create: (context) =>
            DetailsBloc(DetailsState(detailsModelObj: DetailsModel()))
              ..add(DetailsInitialEvent()),
        child: DetailsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 21.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 2.h, bottom: 5.v),
                        child: Column(children: [
                          _buildCard(context),
                          SizedBox(height: 27.v),
                          _buildCard1(context),
                          SizedBox(height: 27.v),
                          _buildCard2(context),
                          SizedBox(height: 27.v),
                          _buildSixty(context),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 43.h),
                                  child: Text(
                                      "lbl_items_delivered".tr.toUpperCase(),
                                      style:
                                          CustomTextStyles.titleSmallGray600))),
                          SizedBox(height: 20.v),
                          _buildSampleSent(context),
                          SizedBox(height: 18.v),
                          _buildMaterialsymbolscheckboxoutline(context),
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: 18.v,
                                  width: 256.h,
                                  margin: EdgeInsets.only(left: 33.h),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        _buildMaterialsymbolscheckboxoutline1(
                                            context),
                                        _buildCode(context)
                                      ]))),
                          SizedBox(height: 15.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: 19.v,
                                  width: 255.h,
                                  margin: EdgeInsets.only(left: 33.h),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        _buildMaterialsymbolscheckboxoutline2(
                                            context),
                                        _buildCode1(context)
                                      ]))),
                          SizedBox(height: 28.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 43.h),
                                  child: Text(
                                      "msg_delivery_information"
                                          .tr
                                          .toUpperCase(),
                                      style:
                                          CustomTextStyles.titleSmallGray600))),
                          SizedBox(height: 10.v),
                          _buildCard3(context),
                          SizedBox(height: 27.v),
                          _buildCard4(context)
                        ]))))));
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
            text: "lbl_details".tr, margin: EdgeInsets.only(left: 55.h)));
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 34.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 19.v),
        decoration: AppDecoration.outlineOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text("msg_sample_transport".tr,
                        style: theme.textTheme.titleSmall)),
                Text("lbl_st_2023_01_008".tr, style: theme.textTheme.bodyMedium)
              ]),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(right: 83.h),
                  child: _buildPLPhone(context,
                      pLPhone: "lbl_test_type".tr, nA: "lbl_hpv".tr))
            ]));
  }

  /// Section Widget
  Widget _buildCard1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 34.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 19.v),
        decoration: AppDecoration.outlineOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 82.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text("msg_sending_facility".tr,
                            style: theme.textTheme.titleSmall)),
                    Padding(
                        padding: EdgeInsets.only(left: 67.h),
                        child: Text("lbl_firts".tr,
                            style: CustomTextStyles.bodyMediumErrorContainer))
                  ])),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(right: 68.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text("lbl_sending_staff".tr,
                                style: theme.textTheme.titleSmall)),
                        Text("lbl_tester".tr,
                            style: CustomTextStyles.bodyMediumErrorContainer)
                      ])),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(right: 29.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 23.v),
                            child: Text("msg_date_time_sent".tr,
                                style: theme.textTheme.titleSmall)),
                        Container(
                            width: 78.h,
                            margin: EdgeInsets.only(left: 60.h),
                            child: Text("msg_05_10_2022_13_12_20".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!
                                    .copyWith(height: 1.44)))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildCard2(BuildContext context) {
    return Container(
        width: 305.h,
        margin: EdgeInsets.symmetric(horizontal: 34.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 18.v),
        decoration: AppDecoration.outlineOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTotalsamplesreceived(context,
                  totalsamplesreceived: "msg_total_samples_sent".tr,
                  three: "lbl_3".tr),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(right: 73.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text("lbl_specimen_type".tr,
                            style: theme.textTheme.titleSmall)),
                    Padding(
                        padding: EdgeInsets.only(left: 72.h),
                        child: Text("lbl_test2".tr,
                            style: theme.textTheme.bodyMedium))
                  ])),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(right: 78.h),
                  child: _buildTemperatureatreceivedtime(context,
                      temperatureatreceivedtime:
                          "msg_temperature_at_sending".tr,
                      zero: "lbl_0_00".tr))
            ]));
  }

  /// Section Widget
  Widget _buildSixty(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 34.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 19.v),
        decoration: AppDecoration.outlineOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 76.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_3pl_name".tr,
                            style: theme.textTheme.titleSmall),
                        Text("lbl_testt".tr,
                            style: CustomTextStyles.bodyMediumErrorContainer)
                      ])),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(right: 83.h),
                  child: _buildPLPhone(context,
                      pLPhone: "lbl_3pl_phone".tr, nA: "lbl_n_a".tr))
            ]));
  }

  /// Section Widget
  Widget _buildSampleSent(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 95.h,
              padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 3.v),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Text("lbl_patient_code".tr,
                  style: CustomTextStyles.titleSmallGray800)),
          CustomOutlinedButton(
              height: 26.v,
              width: 101.h,
              text: "lbl_sample_sent".tr,
              margin: EdgeInsets.only(left: 10.h),
              buttonTextStyle: CustomTextStyles.titleSmallGray800),
          Container(
              width: 129.h,
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 2.v),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Text("lbl_sample_received".tr,
                  style: CustomTextStyles.titleSmallGray800)),
          Container(
              width: 129.h,
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 2.v),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Text("lbl_sample_received".tr,
                  style: CustomTextStyles.titleSmallGray800))
        ])));
  }

  /// Section Widget
  Widget _buildMaterialsymbolscheckboxoutline(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 36.h),
            child: IntrinsicWidth(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  height: 18.v,
                  width: 254.h,
                  margin: EdgeInsets.only(top: 3.v),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: BlocSelector<DetailsBloc, DetailsState, bool?>(
                            selector: (state) =>
                                state.materialsymbolscheckboxoutline,
                            builder: (context, materialsymbolscheckboxoutline) {
                              return CustomCheckboxButton(
                                  alignment: Alignment.centerLeft,
                                  width: 129.h,
                                  value: materialsymbolscheckboxoutline,
                                  isRightCheck: true,
                                  onChange: (value) {
                                    context
                                        .read<DetailsBloc>()
                                        .add(ChangeCheckBoxEvent(value: value));
                                  });
                            })),
                    Align(
                        alignment: Alignment.center,
                        child: BlocSelector<DetailsBloc, DetailsState, bool?>(
                            selector: (state) => state.code,
                            builder: (context, code) {
                              return CustomCheckboxButton(
                                  alignment: Alignment.center,
                                  width: 254.h,
                                  text: "lbl_001".tr,
                                  value: code,
                                  padding: EdgeInsets.symmetric(vertical: 1.v),
                                  isRightCheck: true,
                                  onChange: (value) {
                                    context.read<DetailsBloc>().add(
                                        ChangeCheckBox1Event(value: value));
                                  });
                            }))
                  ])),
              CustomImageView(
                  imagePath:
                      ImageConstant.imgMaterialsymbolscheckboxoutlinerounded,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(left: 90.h, bottom: 3.v))
            ]))));
  }

  /// Section Widget
  Widget _buildMaterialsymbolscheckboxoutline1(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: BlocSelector<DetailsBloc, DetailsState, bool?>(
            selector: (state) => state.materialsymbolscheckboxoutline1,
            builder: (context, materialsymbolscheckboxoutline1) {
              return CustomCheckboxButton(
                  alignment: Alignment.centerLeft,
                  width: 131.h,
                  value: materialsymbolscheckboxoutline1,
                  isRightCheck: true,
                  onChange: (value) {
                    context
                        .read<DetailsBloc>()
                        .add(ChangeCheckBox2Event(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildCode(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: BlocSelector<DetailsBloc, DetailsState, bool?>(
            selector: (state) => state.code1,
            builder: (context, code1) {
              return CustomCheckboxButton(
                  alignment: Alignment.center,
                  width: 256.h,
                  text: "lbl_005".tr,
                  value: code1,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  isRightCheck: true,
                  onChange: (value) {
                    context
                        .read<DetailsBloc>()
                        .add(ChangeCheckBox3Event(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildMaterialsymbolscheckboxoutline2(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: BlocSelector<DetailsBloc, DetailsState, bool?>(
            selector: (state) => state.materialsymbolscheckboxoutline2,
            builder: (context, materialsymbolscheckboxoutline2) {
              return CustomCheckboxButton(
                  alignment: Alignment.centerLeft,
                  width: 130.h,
                  value: materialsymbolscheckboxoutline2,
                  isRightCheck: true,
                  onChange: (value) {
                    context
                        .read<DetailsBloc>()
                        .add(ChangeCheckBox4Event(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildCode1(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: BlocSelector<DetailsBloc, DetailsState, bool?>(
            selector: (state) => state.code2,
            builder: (context, code2) {
              return CustomCheckboxButton(
                  alignment: Alignment.center,
                  width: 255.h,
                  text: "lbl_007".tr,
                  value: code2,
                  isRightCheck: true,
                  onChange: (value) {
                    context
                        .read<DetailsBloc>()
                        .add(ChangeCheckBox5Event(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildCard3(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 34.h),
        padding: EdgeInsets.all(19.h),
        decoration: AppDecoration.outlineOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 42.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text("msg_receiving_facility".tr,
                                style: theme.textTheme.titleSmall)),
                        Text("lbl_second".tr,
                            style: CustomTextStyles.bodyMediumErrorContainer)
                      ])),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(right: 65.h),
                  child: _buildPLPhone(context,
                      pLPhone: "msg_receiving_staff".tr, nA: "lbl_n_a".tr))
            ]));
  }

  /// Section Widget
  Widget _buildCard4(BuildContext context) {
    return Container(
        width: 305.h,
        margin: EdgeInsets.symmetric(horizontal: 34.h),
        padding: EdgeInsets.all(19.h),
        decoration: AppDecoration.outlineOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTotalsamplesreceived(context,
                  totalsamplesreceived: "msg_total_samples_received".tr,
                  three: "lbl_3".tr),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(right: 65.h),
                  child: _buildPLPhone(context,
                      pLPhone: "msg_date_and_time_received".tr,
                      nA: "lbl_n_a".tr)),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(right: 60.h),
                  child: _buildTemperatureatreceivedtime(context,
                      temperatureatreceivedtime:
                          "msg_temperature_at_received_time".tr,
                      zero: "lbl_0_00".tr))
            ]));
  }

  /// Common widget
  Widget _buildPLPhone(
    BuildContext context, {
    required String pLPhone,
    required String nA,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(pLPhone,
              style: theme.textTheme.titleSmall!
                  .copyWith(color: appTheme.blueGray900))),
      Text(nA,
          style:
              theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray900))
    ]);
  }

  /// Common widget
  Widget _buildTotalsamplesreceived(
    BuildContext context, {
    required String totalsamplesreceived,
    required String three,
  }) {
    return Row(children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(totalsamplesreceived,
              style: theme.textTheme.titleSmall!
                  .copyWith(color: appTheme.blueGray900))),
      Padding(
          padding: EdgeInsets.only(left: 19.h),
          child: Text(three,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.blueGray900)))
    ]);
  }

  /// Common widget
  Widget _buildTemperatureatreceivedtime(
    BuildContext context, {
    required String temperatureatreceivedtime,
    required String zero,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(
          child: SizedBox(
              width: 166.h,
              child: Text(temperatureatreceivedtime,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall!
                      .copyWith(color: appTheme.blueGray900)))),
      Padding(
          padding: EdgeInsets.only(left: 11.h, bottom: 16.v),
          child: Text(zero,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.blueGray900)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
