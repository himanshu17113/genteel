import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class ProductcardlistItemWidget extends StatelessWidget {
  const ProductcardlistItemWidget({Key? key})
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
                    imagePath: ImageConstant.imgRectangle344,
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
                      right: 14.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.v),
            Text(
              "Lux Band",
              style: CustomTextStyles.titleMediumBlack900,
            ),
            SizedBox(height: 2.v),
            Text(
              "Elegance wrapped handbag",
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 3.v),
            Text(
              "40",
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
