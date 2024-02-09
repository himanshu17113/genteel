import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class Frame2ItemWidget extends StatelessWidget {
  const Frame2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 77.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle602,
        height: 77.adaptSize,
        width: 77.adaptSize,
      ),
    );
  }
}
