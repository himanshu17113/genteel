import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class CreditcardformItemWidget extends StatelessWidget {
  const CreditcardformItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 48.adaptSize,
          width: 48.adaptSize,
          padding: EdgeInsets.symmetric(vertical: 7.v),
          decoration: AppDecoration.fillGray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgCloseRedA700,
            height: 34.v,
            width: 48.h,
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 23.h,
            top: 12.v,
            bottom: 13.v,
          ),
          child: Text(
            "Credit card",
            style: CustomTextStyles.titleMediumNunitoBlack900_1,
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 12.v),
          padding: EdgeInsets.all(7.h),
          decoration: AppDecoration.green.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder12,
          ),
          child: Container(
            height: 8.adaptSize,
            width: 8.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
