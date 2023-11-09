import '../sample_screen/widgets/userappointment1_item_widget.dart';
import 'bloc/sample_bloc.dart';
import 'models/sample_model.dart';
import 'models/userappointment1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/widgets/app_bar/appbar_leading_image.dart';
import 'package:ridersnew/widgets/app_bar/appbar_title.dart';
import 'package:ridersnew/widgets/app_bar/custom_app_bar.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SampleBloc>(
        create: (context) =>
            SampleBloc(SampleState(sampleModelObj: SampleModel()))
              ..add(SampleInitialEvent()),
        child: SampleScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 12.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 35.h, right: 13.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildUserAppointment(context),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: SizedBox(
                                      height: 760.v,
                                      child: VerticalDivider(
                                          width: 6.h,
                                          thickness: 6.v,
                                          indent: 528.h,
                                          endIndent: 127.h)))
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
            text: "lbl_samples".tr, margin: EdgeInsets.only(left: 55.h)));
  }

  /// Section Widget
  Widget _buildUserAppointment(BuildContext context) {
    return Expanded(
        child: BlocSelector<SampleBloc, SampleState, SampleModel?>(
            selector: (state) => state.sampleModelObj,
            builder: (context, sampleModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 5.v);
                  },
                  itemCount:
                      sampleModelObj?.userappointment1ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Userappointment1ItemModel model =
                        sampleModelObj?.userappointment1ItemList[index] ??
                            Userappointment1ItemModel();
                    return Userappointment1ItemWidget(model);
                  });
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
