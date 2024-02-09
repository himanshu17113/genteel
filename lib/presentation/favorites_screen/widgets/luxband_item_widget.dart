import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class LuxbandItemWidget extends StatelessWidget {
  const LuxbandItemWidget({Key? key})
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
                imagePath: ImageConstant.imgRectangle171,
                height: 200.v,
                width: 160.h,
                radius: BorderRadius.circular(
                  2.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMdiHeart,
                height: 18.adaptSize,
                width: 18.adaptSize,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: 10.v,
                  right: 12.h,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          "Prada",
          style: CustomTextStyles.titleMediumBlack900,
        ),
        SizedBox(height: 2.v),
        Text(
          "Elegance Mini handbag",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 3.v),
        Text(
          "240",
          style: theme.textTheme.titleMedium,
        ),
      ],
    );
  }
}
