import '../filter_category_page/widgets/filtercategory_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';
import 'package:genteel/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class FilterCategoryPage extends StatefulWidget {
  const FilterCategoryPage({Key? key})
      : super(
          key: key,
        );

  @override
  FilterCategoryPageState createState() => FilterCategoryPageState();
}

class FilterCategoryPageState extends State<FilterCategoryPage>
    with AutomaticKeepAliveClientMixin<FilterCategoryPage> {
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    Text(
                      "Dresses",
                      style: CustomTextStyles.titleMediumNunitoBlack90017,
                    ),
                    SizedBox(height: 16.v),
                    Divider(),
                    SizedBox(height: 18.v),
                    Text(
                      "Jewelries",
                      style: CustomTextStyles.titleMediumNunitoBlack90017,
                    ),
                    SizedBox(height: 17.v),
                    CustomOutlinedButton(
                      text: "Jackets & Blazers",
                      rightIcon: Container(
                        margin: EdgeInsets.only(left: 30.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmarkBlueGray90001,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Text(
                      "Shoes",
                      style: CustomTextStyles.titleMediumNunitoBlack90017,
                    ),
                    SizedBox(height: 17.v),
                    Divider(),
                    SizedBox(height: 19.v),
                    Text(
                      "Lingeries & Night-wears",
                      style: CustomTextStyles.titleMediumNunitoBlack90017,
                    ),
                    SizedBox(height: 15.v),
                    _buildFilterCategory(context),
                    SizedBox(height: 46.v),
                    CustomElevatedButton(
                      text: "Apply filter",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFilterCategory(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 0.5.v),
          child: SizedBox(
            width: 335.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.gray30001,
            ),
          ),
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return FiltercategoryItemWidget();
      },
    );
  }
}
