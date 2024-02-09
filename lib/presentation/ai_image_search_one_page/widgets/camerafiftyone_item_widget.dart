import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CamerafiftyoneItemWidget extends StatelessWidget {
  const CamerafiftyoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 89.adaptSize,
      width: 89.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3778,
            height: 89.adaptSize,
            width: 89.adaptSize,
            radius: BorderRadius.only(
              topLeft: Radius.circular(12.h),
            ),
            alignment: Alignment.center,
          ),
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillBlackTL20,
            alignment: Alignment.center,
            child: CustomImageView(
              imagePath: ImageConstant.imgCamera51,
            ),
          ),
        ],
      ),
    );
  }
}
