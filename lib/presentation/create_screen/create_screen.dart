import '../create_screen/widgets/medicalappointment_item_widget.dart';
import 'bloc/create_bloc.dart';
import 'models/create_model.dart';
import 'models/medicalappointment_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/widgets/app_bar/appbar_leading_image.dart';
import 'package:ridersnew/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ridersnew/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ridersnew/widgets/app_bar/custom_app_bar.dart';
import 'package:ridersnew/widgets/custom_drop_down.dart';
import 'package:ridersnew/widgets/custom_floating_button.dart';
import 'package:ridersnew/widgets/custom_icon_button.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateBloc>(
      create: (context) => CreateBloc(CreateState(
        createModelObj: CreateModel(),
      ))
        ..add(CreateInitialEvent()),
      child: CreateScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 35.h,
                    right: 35.h,
                    bottom: 13.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildAppBar(context),
                      SizedBox(height: 49.v),
                      _buildInfo(context),
                      SizedBox(height: 21.v),
                      Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child:
                            BlocSelector<CreateBloc, CreateState, CreateModel?>(
                          selector: (state) => state.createModelObj,
                          builder: (context, createModelObj) {
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
                              items: createModelObj?.dropdownItemList ?? [],
                              onChanged: (value) {
                                context
                                    .read<CreateBloc>()
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
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.h,
                    vertical: 112.v,
                  ),
                  decoration: AppDecoration.fillGray90001,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 18.v,
                              bottom: 15.v,
                            ),
                            child: Text(
                              "lbl_create_sample".tr,
                              style:
                                  CustomTextStyles.titleMediumOnErrorContainer,
                            ),
                          ),
                          _buildFloatingActionButton(context),
                        ],
                      ),
                      SizedBox(height: 45.v),
                      Padding(
                        padding: EdgeInsets.only(right: 74.h),
                        child: Text(
                          "lbl_create_result".tr,
                          style: CustomTextStyles.titleMediumOnErrorContainer,
                        ),
                      ),
                      SizedBox(height: 53.v),
                      Padding(
                        padding: EdgeInsets.only(right: 9.h),
                        child: CustomIconButton(
                          height: 29.adaptSize,
                          width: 29.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          decoration: IconButtonStyleHelper.outlineBlack,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFloatingIcon,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton1(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 36.v,
      leadingWidth: 63.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenu,
        margin: EdgeInsets.only(
          left: 35.h,
          top: 8.v,
          bottom: 9.v,
        ),
      ),
      title: AppbarSubtitleOne(
        text: "msg_greetings_joseph".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUnsplash4yv84vgqkrm,
          margin: EdgeInsets.symmetric(horizontal: 35.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 9.h),
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 14.v,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: fs.Svg(
                  ImageConstant.imgGroup47,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Row(
                    children: [
                      CustomIconButton(
                        height: 27.adaptSize,
                        width: 27.adaptSize,
                        padding: EdgeInsets.all(4.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgInfo,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 22.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "lbl_20".tr,
                          style: CustomTextStyles.titleMediumOnErrorContainer_1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                Text(
                  "msg_samples_delivered".tr,
                  style: CustomTextStyles.bodyMediumOnErrorContainer,
                ),
                SizedBox(height: 3.v),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 9.h),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 14.v,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: fs.Svg(
                  ImageConstant.imgGroup48,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CustomIconButton(
                      height: 27.adaptSize,
                      width: 27.adaptSize,
                      padding: EdgeInsets.all(2.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCarbonResult,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "lbl_15".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "msg_results_collected".tr,
                    style: CustomTextStyles.bodyMediumPrimary,
                  ),
                ),
                SizedBox(height: 3.v),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMedicalAppointment(BuildContext context) {
    return BlocSelector<CreateBloc, CreateState, CreateModel?>(
      selector: (state) => state.createModelObj,
      builder: (context, createModelObj) {
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
          itemCount: createModelObj?.medicalappointmentItemList.length ?? 0,
          itemBuilder: (context, index) {
            MedicalappointmentItemModel model =
                createModelObj?.medicalappointmentItemList[index] ??
                    MedicalappointmentItemModel();
            return MedicalappointmentItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 55,
      width: 55,
      backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      child: CustomImageView(
        imagePath: ImageConstant.imgInfo,
        height: 27.5.v,
        width: 27.5.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton1(BuildContext context) {
    return CustomFloatingButton(
      height: 55,
      width: 55,
      backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      child: CustomImageView(
        imagePath: ImageConstant.imgCarbonResult,
        height: 27.5.v,
        width: 27.5.h,
      ),
    );
  }
}
