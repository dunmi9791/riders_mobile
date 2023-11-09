import '../models/userstats_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:ridersnew/core/app_export.dart';
import 'package:ridersnew/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserstatsItemWidget extends StatelessWidget {
  UserstatsItemWidget(
    this.userstatsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserstatsItemModel userstatsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      width: 143.h,
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
                    imagePath: userstatsItemModelObj?.userInfoButton,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 22.h,
                    top: 3.v,
                  ),
                  child: Text(
                    userstatsItemModelObj.userAge!,
                    style: CustomTextStyles.titleMediumOnErrorContainer_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            userstatsItemModelObj.samplesDelivered!,
            style: CustomTextStyles.bodyMediumOnErrorContainer,
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
