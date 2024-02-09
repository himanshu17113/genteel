import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class ItemincartItemWidget extends StatelessWidget {
  const ItemincartItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle17200x160,
          height: 132.v,
          width: 102.h,
          radius: BorderRadius.circular(
            2.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 147.h,
                    margin: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "Shawl Rounded Collar Blazer",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.titleSmallBluegray90001_1.copyWith(
                        height: 1.60,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightBlack900,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 44.h,
                      bottom: 29.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7.v),
              Row(
                children: [
                  Text(
                    "Color:",
                    style: CustomTextStyles.bodyMedium14,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 21.adaptSize,
                    width: 21.adaptSize,
                    margin: EdgeInsets.only(left: 10.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.h),
                    child: Text(
                      "Size:",
                      style: CustomTextStyles.bodyMedium14,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "M",
                      style: CustomTextStyles.bodyMedium14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.v),
              SizedBox(
                width: 213.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 7.v,
                        bottom: 6.v,
                      ),
                      child: Text(
                        "150",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 6.v,
                      ),
                      decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIconPlaceholder,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            radius: BorderRadius.circular(
                              10.h,
                            ),
                            margin: EdgeInsets.only(top: 1.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 24.h,
                              top: 1.v,
                            ),
                            child: Text(
                              "1",
                              style: CustomTextStyles.titleSmallBlack900,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgIconPlaceholderBlack900,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            radius: BorderRadius.circular(
                              10.h,
                            ),
                            margin: EdgeInsets.only(
                              left: 24.h,
                              top: 1.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
