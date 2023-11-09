import '../result_screen/widgets/userappointment2_item_widget.dart';
import 'bloc/result_bloc.dart';
import 'models/result_model.dart';
import 'models/userappointment2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/widgets/app_bar/appbar_leading_image.dart';
import 'package:ridersnew/widgets/app_bar/appbar_title.dart';
import 'package:ridersnew/widgets/app_bar/custom_app_bar.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ResultBloc>(
        create: (context) =>
            ResultBloc(ResultState(resultModelObj: ResultModel()))
              ..add(ResultInitialEvent()),
        child: ResultScreen());
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
                    padding: EdgeInsets.only(top: 14.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 38.h, right: 10.h),
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
            margin: EdgeInsets.only(left: 35.h, top: 22.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_results".tr, margin: EdgeInsets.only(left: 55.h)));
  }

  /// Section Widget
  Widget _buildUserAppointment(BuildContext context) {
    return Expanded(
        child: BlocSelector<ResultBloc, ResultState, ResultModel?>(
            selector: (state) => state.resultModelObj,
            builder: (context, resultModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 5.v);
                  },
                  itemCount:
                      resultModelObj?.userappointment2ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Userappointment2ItemModel model =
                        resultModelObj?.userappointment2ItemList[index] ??
                            Userappointment2ItemModel();
                    return Userappointment2ItemWidget(model);
                  });
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
