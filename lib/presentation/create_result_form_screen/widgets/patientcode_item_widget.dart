import '../models/patientcode_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ridersnew/core/app_export.dart';

// ignore: must_be_immutable
class PatientcodeItemWidget extends StatelessWidget {
  PatientcodeItemWidget(
    this.patientcodeItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  PatientcodeItemModel patientcodeItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 14.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        patientcodeItemModelObj.patientcode!,
        style: TextStyle(
          color: appTheme.gray800,
          fontSize: 10.fSize,
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: (patientcodeItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      selectedColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      shape: (patientcodeItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.onErrorContainer.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                6.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray600,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                6.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
