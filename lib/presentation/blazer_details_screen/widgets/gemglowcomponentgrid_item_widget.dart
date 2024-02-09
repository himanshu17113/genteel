import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class GemglowcomponentgridItemWidget extends StatelessWidget {
  const GemglowcomponentgridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 200.v,
          width: 160.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle18200x160,
                height: 200.v,
                width: 160.h,
                radius: BorderRadius.circular(
                  2.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFavorite,
                height: 16.adaptSize,
                width: 16.adaptSize,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: 10.v,
                  right: 15.h,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          "Gem Glow",
          style: CustomTextStyles.titleMediumBlack900,
        ),
        SizedBox(height: 1.v),
        Text(
          "Long Classical Blazer ",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 1.v),
        Text(
          "100",
          style: theme.textTheme.titleMedium,
        ),
      ],
    );
  }
}
