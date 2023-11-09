import 'bloc/confirmation_success_bloc.dart';
import 'models/confirmation_success_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/widgets/custom_outlined_button.dart';

class ConfirmationSuccessScreen extends StatelessWidget {
  const ConfirmationSuccessScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ConfirmationSuccessBloc>(
      create: (context) => ConfirmationSuccessBloc(ConfirmationSuccessState(
        confirmationSuccessModelObj: ConfirmationSuccessModel(),
      ))
        ..add(ConfirmationSuccessInitialEvent()),
      child: ConfirmationSuccessScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ConfirmationSuccessBloc, ConfirmationSuccessState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 214.v),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLayerX00201,
                    height: 162.adaptSize,
                    width: 162.adaptSize,
                  ),
                  SizedBox(height: 22.v),
                  Text(
                    "lbl_success".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  Spacer(),
                  CustomOutlinedButton(
                    height: 49.v,
                    width: 244.h,
                    text: "lbl_return_to_home".tr,
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
