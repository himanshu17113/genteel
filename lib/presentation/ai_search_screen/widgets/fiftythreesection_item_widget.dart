import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class FiftythreesectionItemWidget extends StatelessWidget {
  const FiftythreesectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 79.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle6077x79,
            height: 77.v,
            width: 79.h,
          ),
          SizedBox(height: 3.v),
          Text(
            "Prada",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 10.v),
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
