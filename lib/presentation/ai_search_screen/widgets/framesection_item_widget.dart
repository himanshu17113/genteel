import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class FramesectionItemWidget extends StatelessWidget {
  const FramesectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 11.v,
        right: 16.h,
        bottom: 11.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Chat",
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w500,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgMingcutechat4lineOnprimarycontainer,
        height: 24.adaptSize,
        width: 24.adaptSize,
        radius: BorderRadius.circular(
          17.h,
        ),
        margin: EdgeInsets.only(right: 8.h),
      ),
      selected: false,
      backgroundColor: appTheme.gray50,
      selectedColor: appTheme.gray50,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(0.65),
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          22.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
