import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class NinetyeightlistItemWidget extends StatelessWidget {
  const NinetyeightlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 19.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.black900,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 109.h,
              bottom: 17.v,
            ),
            child: Text(
              "Black",
              style: CustomTextStyles.titleMediumNunitoBlack90017,
            ),
          ),
        ],
      ),
    );
  }
}
