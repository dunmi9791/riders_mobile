import '../menu_screen/widgets/userappointment_item_widget.dart';
import 'bloc/menu_bloc.dart';
import 'models/menu_model.dart';
import 'models/userappointment_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/widgets/custom_icon_button.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MenuBloc>(
      create: (context) => MenuBloc(MenuState(
        menuModelObj: MenuModel(),
      ))
        ..add(MenuInitialEvent()),
      child: MenuScreen(),
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
                    padding: EdgeInsets.only(left: 13.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 157.v,
                            bottom: 108.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 109.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomIconButton(
                                      height: 35.adaptSize,
                                      width: 35.adaptSize,
                                      padding: EdgeInsets.all(6.h),
                                      decoration: IconButtonStyleHelper
                                          .outlineBlackTL17,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgInfo,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 9.v,
                                        bottom: 8.v,
                                      ),
                                      child: Text(
                                        "lbl_samples".tr,
                                        style: CustomTextStyles
                                            .titleSmallOnErrorContainer,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 14.v),
                              Container(
                                width: 103.h,
                                margin: EdgeInsets.only(right: 6.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomIconButton(
                                      height: 35.adaptSize,
                                      width: 35.adaptSize,
                                      padding: EdgeInsets.all(6.h),
                                      decoration: IconButtonStyleHelper
                                          .outlineBlackTL17,
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgCarbonResult,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 8.v,
                                        bottom: 9.v,
                                      ),
                                      child: Text(
                                        "lbl_results".tr,
                                        style: CustomTextStyles
                                            .titleSmallOnErrorContainer,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 428.v),
                              Container(
                                width: 99.h,
                                margin: EdgeInsets.only(right: 10.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                          height: 27.adaptSize,
                          width: 27.adaptSize,
                          margin: EdgeInsets.only(
                            left: 12.h,
                            top: 20.v,
                            bottom: 765.v,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgMaterialSymbol,
                                height: 27.adaptSize,
                                width: 27.adaptSize,
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgMaterialSymbol,
                                height: 27.adaptSize,
                                width: 27.adaptSize,
                                alignment: Alignment.center,
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
                              _buildUserAppointment(context),
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
  Widget _buildUserAppointment(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.h),
      child: BlocSelector<MenuBloc, MenuState, MenuModel?>(
        selector: (state) => state.menuModelObj,
        builder: (context, menuModelObj) {
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
            itemCount: menuModelObj?.userappointmentItemList.length ?? 0,
            itemBuilder: (context, index) {
              UserappointmentItemModel model =
                  menuModelObj?.userappointmentItemList[index] ??
                      UserappointmentItemModel();
              return UserappointmentItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
