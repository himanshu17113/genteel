import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class RadiantringcomponentItemWidget extends StatelessWidget {
  const RadiantringcomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200.v,
              width: 160.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle344200x160,
                    height: 200.v,
                    width: 160.h,
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
            SizedBox(height: 11.v),
            Text(
              "Radiant Ring",
              style: CustomTextStyles.titleMediumBlack900,
            ),
            Text(
              "Shine like diamond",
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 10.v),
            Text(
              "300",
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
