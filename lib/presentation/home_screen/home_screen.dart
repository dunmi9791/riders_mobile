import '../home_screen/widgets/medicalappointment1_item_widget.dart';
import '../home_screen/widgets/userstats_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/medicalappointment1_item_model.dart';
import 'models/userstats_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/widgets/app_bar/appbar_leading_image.dart';
import 'package:ridersnew/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ridersnew/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ridersnew/widgets/app_bar/custom_app_bar.dart';
import 'package:ridersnew/widgets/custom_drop_down.dart';
import 'package:ridersnew/widgets/custom_floating_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 33.v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 39.v),
              _buildUserStats(context),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(right: 39.h),
                child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                  selector: (state) => state.homeModelObj,
                  builder: (context, homeModelObj) {
                    return CustomDropDown(
                      width: 74.h,
                      icon: SizedBox(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdown,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      hintText: "lbl_new_first".tr,
                      alignment: Alignment.centerRight,
                      items: homeModelObj?.dropdownItemList ?? [],
                      onChanged: (value) {
                        context
                            .read<HomeBloc>()
                            .add(ChangeDropDownEvent(value: value));
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 13.v),
              _buildMedicalAppointment(context),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 63.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenu,
        margin: EdgeInsets.only(
          left: 35.h,
          top: 18.v,
          bottom: 19.v,
        ),
      ),
      title: AppbarSubtitleOne(
        text: "msg_greetings_joseph".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUnsplash4yv84vgqkrm,
          margin: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserStats(BuildContext context) {
    return SizedBox(
      height: 86.v,
      child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
        selector: (state) => state.homeModelObj,
        builder: (context, homeModelObj) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 35.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 19.h,
              );
            },
            itemCount: homeModelObj?.userstatsItemList.length ?? 0,
            itemBuilder: (context, index) {
              UserstatsItemModel model =
                  homeModelObj?.userstatsItemList[index] ??
                      UserstatsItemModel();
              return UserstatsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMedicalAppointment(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.h),
      child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
        selector: (state) => state.homeModelObj,
        builder: (context, homeModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 5.v,
              );
            },
            itemCount: homeModelObj?.medicalappointment1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Medicalappointment1ItemModel model =
                  homeModelObj?.medicalappointment1ItemList[index] ??
                      Medicalappointment1ItemModel();
              return Medicalappointment1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 56,
      width: 56,
      backgroundColor: theme.colorScheme.primary,
      decoration: FloatingButtonStyleHelper.fillPrimary,
      child: CustomImageView(
        imagePath: ImageConstant.imgFloatingIcon,
        height: 28.0.v,
        width: 28.0.h,
      ),
    );
  }
}
