import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';
import 'package:genteel/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class FilterSizePage extends StatefulWidget {
  const FilterSizePage({Key? key})
      : super(
          key: key,
        );

  @override
  FilterSizePageState createState() => FilterSizePageState();
}

class FilterSizePageState extends State<FilterSizePage>
    with AutomaticKeepAliveClientMixin<FilterSizePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 18.v),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      Text(
                        "XS",
                        style: CustomTextStyles.titleMediumNunitoBlack90017,
                      ),
                      SizedBox(height: 17.v),
                      Divider(),
                      SizedBox(height: 18.v),
                      Text(
                        "S",
                        style: CustomTextStyles.titleMediumNunitoBlack90017,
                      ),
                      SizedBox(height: 18.v),
                      CustomOutlinedButton(
                        text: "M",
                        rightIcon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCheckmarkBlueGray90001,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                          ),
                        ),
                      ),
                      SizedBox(height: 17.v),
                      Text(
                        "L",
                        style: CustomTextStyles.titleMediumNunitoBlack90017,
                      ),
                      SizedBox(height: 17.v),
                      Divider(),
                      SizedBox(height: 18.v),
                      Text(
                        "XL",
                        style: CustomTextStyles.titleMediumNunitoBlack90017,
                      ),
                      SizedBox(height: 16.v),
                      Divider(),
                      SizedBox(height: 18.v),
                      Text(
                        "XXL",
                        style: CustomTextStyles.titleMediumNunitoBlack90017,
                      ),
                      SizedBox(height: 16.v),
                      Divider(),
                      Spacer(),
                      CustomElevatedButton(
                        text: "Apply filter",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
