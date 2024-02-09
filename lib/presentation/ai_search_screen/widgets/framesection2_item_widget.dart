import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Framesection2ItemWidget extends StatelessWidget {
  const Framesection2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 77.adaptSize,
      width: 77.adaptSize,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle60,
            height: 77.adaptSize,
            width: 77.adaptSize,
            alignment: Alignment.center,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 4.h,
              bottom: 2.v,
            ),
            child: CustomIconButton(
              height: 16.adaptSize,
              width: 16.adaptSize,
              padding: EdgeInsets.all(1.h),
              decoration: IconButtonStyleHelper.fillBlack,
              alignment: Alignment.bottomRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlayCircleOutline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
