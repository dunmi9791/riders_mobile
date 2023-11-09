import 'bloc/log_out_bloc.dart';
import 'models/log_out_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LogOutBottomsheet extends StatelessWidget {
  const LogOutBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LogOutBloc>(
      create: (context) => LogOutBloc(LogOutState(
        logOutModelObj: LogOutModel(),
      ))
        ..add(LogOutInitialEvent()),
      child: LogOutBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 373.h,
      padding: EdgeInsets.symmetric(
        horizontal: 63.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10.v),
          Text(
            "msg_are_you_sure_you".tr,
            style: CustomTextStyles.titleSmallGray90001,
          ),
          SizedBox(height: 31.v),
          CustomElevatedButton(
            text: "lbl_log_out".tr,
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.titleLargeOnErrorContainer,
          ),
          SizedBox(height: 28.v),
          Text(
            "lbl_cancel".tr,
            style: CustomTextStyles.titleSmallRed500_1,
          ),
        ],
      ),
    );
  }
}
