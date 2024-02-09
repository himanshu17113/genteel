import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class Crystalcomponent1ItemWidget extends StatelessWidget {
  const Crystalcomponent1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle152,
          height: 200.v,
          width: 160.h,
          radius: BorderRadius.circular(
            2.h,
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          "Blazers",
          style: CustomTextStyles.titleMediumBluegray90001,
        ),
      ],
    );
  }
}
