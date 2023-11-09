import '../models/userappointment1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userappointment1ItemWidget extends StatelessWidget {
  Userappointment1ItemWidget(
    this.userappointment1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userappointment1ItemModel userappointment1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userappointment1ItemModelObj.userName!,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 4.v),
              Text(
                userappointment1ItemModelObj.appointmentTime!,
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
                      userappointment1ItemModelObj.clinicName!,
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
