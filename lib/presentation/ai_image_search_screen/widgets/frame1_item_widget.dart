import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class Frame1ItemWidget extends StatelessWidget {
  const Frame1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 77.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle601,
        height: 77.adaptSize,
        width: 77.adaptSize,
      ),
    );
  }
}
