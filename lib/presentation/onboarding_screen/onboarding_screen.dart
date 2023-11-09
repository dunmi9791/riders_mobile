import 'bloc/onboarding_bloc.dart';
import 'models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
        create: (context) => OnboardingBloc(
            OnboardingState(onboardingModelObj: OnboardingModel()))
          ..add(OnboardingInitialEvent()),
        child: OnboardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    Spacer(),
                    CustomImageView(
                        imagePath: ImageConstant.imgLogoRemovebgPreview,
                        height: 290.v,
                        width: 374.h),
                    SizedBox(height: 93.v),
                    _buildTwentyFour(context)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildTwentyFour(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 65.h, vertical: 54.v),
        decoration: AppDecoration.fillOnErrorContainer
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_welcome".tr, style: theme.textTheme.headlineMedium),
          SizedBox(height: 39.v),
          CustomElevatedButton(
              text: "lbl_log_in".tr,
              buttonStyle: CustomButtonStyles.fillPrimary,
              onPressed: () {
                onTapLogIn(context);
              }),
          SizedBox(height: 81.v)
        ]));
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInScreen,
    );
  }
}
