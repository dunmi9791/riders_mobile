import 'bloc/confirmation_error_bloc.dart';
import 'models/confirmation_error_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/widgets/custom_outlined_button.dart';

class ConfirmationErrorScreen extends StatelessWidget {
  const ConfirmationErrorScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ConfirmationErrorBloc>(
      create: (context) => ConfirmationErrorBloc(ConfirmationErrorState(
        confirmationErrorModelObj: ConfirmationErrorModel(),
      ))
        ..add(ConfirmationErrorInitialEvent()),
      child: ConfirmationErrorScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ConfirmationErrorBloc, ConfirmationErrorState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 214.v),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 160.adaptSize,
                    width: 160.adaptSize,
                    padding: EdgeInsets.all(43.h),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder80,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgWarning,
                      height: 72.adaptSize,
                      width: 72.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 21.v),
                  Text(
                    "lbl_error".tr,
                    style: CustomTextStyles.headlineLargeRed500,
                  ),
                  Spacer(),
                  CustomOutlinedButton(
                    height: 49.v,
                    width: 244.h,
                    text: "lbl_try_again".tr,
                    buttonStyle: CustomButtonStyles.outlinePrimary,
                    buttonTextStyle: CustomTextStyles.titleLargePrimary,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
