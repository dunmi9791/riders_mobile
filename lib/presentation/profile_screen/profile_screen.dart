import '../profile_screen/widgets/profilescreen_item_widget.dart';
import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'models/profilescreen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/widgets/custom_icon_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 48.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 22.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20.v,
                            bottom: 108.v,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  height: 27.adaptSize,
                                  width: 27.adaptSize,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMaterialSymbol,
                                        height: 27.adaptSize,
                                        width: 27.adaptSize,
                                        alignment: Alignment.center,
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMaterialSymbol,
                                        height: 27.adaptSize,
                                        width: 27.adaptSize,
                                        alignment: Alignment.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 11.v),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgUnsplash4yv84vgqkrm48x48,
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                radius: BorderRadius.circular(
                                  24.h,
                                ),
                              ),
                              SizedBox(height: 11.v),
                              Text(
                                "lbl_your_name".tr,
                                style: CustomTextStyles
                                    .titleSmallDMSansOnErrorContainer,
                              ),
                              SizedBox(height: 5.v),
                              Text(
                                "msg_youremail_gmail_com".tr,
                                style:
                                    CustomTextStyles.bodySmallDMSansBluegray100,
                              ),
                              SizedBox(height: 33.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 126.h,
                                  margin: EdgeInsets.only(right: 13.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomIconButton(
                                        height: 35.adaptSize,
                                        width: 35.adaptSize,
                                        padding: EdgeInsets.all(8.h),
                                        decoration: IconButtonStyleHelper
                                            .outlineBlackTL17,
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgEdit,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 8.v,
                                          bottom: 9.v,
                                        ),
                                        child: Text(
                                          "lbl_edit_profile".tr,
                                          style: CustomTextStyles
                                              .titleSmallOnErrorContainer,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 444.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomIconButton(
                                      height: 35.adaptSize,
                                      width: 35.adaptSize,
                                      padding: EdgeInsets.all(5.h),
                                      decoration: IconButtonStyleHelper
                                          .fillOnErrorContainer,
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgBxLogOutCircle,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 12.h,
                                        top: 8.v,
                                        bottom: 9.v,
                                      ),
                                      child: Text(
                                        "lbl_log_out".tr,
                                        style:
                                            CustomTextStyles.titleSmallRed500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 11.h),
                          decoration:
                              AppDecoration.fillOnErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder30,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 72.v),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMenu,
                                    height: 19.v,
                                    width: 28.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: Text(
                                      "msg_greetings_joseph".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 58.v),
                              _buildInfo(context),
                              SizedBox(height: 58.v),
                              _buildProfileScreen(context),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInfo(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 35.h),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
                            style:
                                CustomTextStyles.titleMediumOnErrorContainer_1,
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
            Container(
              margin: EdgeInsets.only(left: 19.h),
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
                          top: 4.v,
                        ),
                        child: Text(
                          "lbl_15".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.v),
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
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileScreen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.h),
      child: BlocSelector<ProfileBloc, ProfileState, ProfileModel?>(
        selector: (state) => state.profileModelObj,
        builder: (context, profileModelObj) {
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
            itemCount: profileModelObj?.profilescreenItemList.length ?? 0,
            itemBuilder: (context, index) {
              ProfilescreenItemModel model =
                  profileModelObj?.profilescreenItemList[index] ??
                      ProfilescreenItemModel();
              return ProfilescreenItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
