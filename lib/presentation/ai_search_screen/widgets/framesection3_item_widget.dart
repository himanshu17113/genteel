import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class Framesection3ItemWidget extends StatelessWidget {
  const Framesection3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 77.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle6077x77,
        height: 77.adaptSize,
        width: 77.adaptSize,
      ),
    );
  }
}
