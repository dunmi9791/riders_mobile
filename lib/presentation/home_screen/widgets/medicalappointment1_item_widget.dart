import '../models/medicalappointment1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';

// ignore: must_be_immutable
class Medicalappointment1ItemWidget extends StatelessWidget {
  Medicalappointment1ItemWidget(
    this.medicalappointment1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Medicalappointment1ItemModel medicalappointment1ItemModelObj;

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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 7.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  medicalappointment1ItemModelObj.userName!,
                  style: theme.textTheme.bodyMedium,
                ),
                Text(
                  medicalappointment1ItemModelObj.appointmentDate!,
                  style: CustomTextStyles.bodySmallBluegray900,
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            medicalappointment1ItemModelObj.appointmentTime!,
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
                  medicalappointment1ItemModelObj.medicalCentreName!,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
