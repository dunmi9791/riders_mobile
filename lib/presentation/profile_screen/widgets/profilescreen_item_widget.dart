import '../models/profilescreen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';

// ignore: must_be_immutable
class ProfilescreenItemWidget extends StatelessWidget {
  ProfilescreenItemWidget(
    this.profilescreenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfilescreenItemModel profilescreenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                profilescreenItemModelObj.sampoooo!,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 4.v),
              Text(
                profilescreenItemModelObj.dateRange!,
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
                      profilescreenItemModelObj.lifePointMedical!,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 34.v,
            width: 76.h,
            margin: EdgeInsets.only(
              left: 46.h,
              top: 13.v,
              bottom: 13.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 34.v,
                    width: 76.h,
                    decoration: BoxDecoration(
                      color: appTheme.greenA100.withOpacity(0.23),
                      borderRadius: BorderRadius.circular(
                        17.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    profilescreenItemModelObj.received!,
                    style: CustomTextStyles.bodySmallGreen400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
