import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class Productcardlist1ItemWidget extends StatelessWidget {
  const Productcardlist1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
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
          SizedBox(height: 12.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  "View All",
                  style: CustomTextStyles.titleSmallBluegray90001,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(left: 4.h),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
