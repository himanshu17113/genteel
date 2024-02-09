import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class FiltercategoryItemWidget extends StatelessWidget {
  const FiltercategoryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomOutlinedButton(
      width: 335.h,
      text: "Bags",
      rightIcon: Container(
        margin: EdgeInsets.only(left: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgCheckmarkBlueGray90001,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
    );
  }
}
