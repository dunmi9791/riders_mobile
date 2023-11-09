import '../models/userappointment2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userappointment2ItemWidget extends StatelessWidget {
  Userappointment2ItemWidget(
    this.userappointment2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userappointment2ItemModel userappointment2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userappointment2ItemModelObj.userName!,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 4.v),
              Text(
                userappointment2ItemModelObj.appointmentTime!,
                style: CustomTextStyles.bodySmallGray600,
              ),
              SizedBox(height: 11.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLocation,
                    height: 11.adaptSize,
                    width: 11.adaptSize,
                    margin: EdgeInsets.only(
                      top: 2.v,
                      bottom: 1.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      userappointment2ItemModelObj.clinicName!,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CustomElevatedButton(
            height: 34.v,
            width: 76.h,
            text: "lbl_received".tr,
            margin: EdgeInsets.only(
              left: 44.h,
              top: 13.v,
              bottom: 13.v,
            ),
            buttonTextStyle: CustomTextStyles.bodySmallGreen400,
          ),
        ],
      ),
    );
  }
}
