import '../catalog_blazers_screen/widgets/catalogblazers_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/app_bar/appbar_subtitle.dart';
import 'package:genteel/widgets/app_bar/appbar_trailing_image.dart';
import 'package:genteel/widgets/app_bar/custom_app_bar.dart';
import 'package:genteel/widgets/custom_bottom_bar.dart';
import 'package:genteel/widgets/custom_drop_down.dart';
import 'package:genteel/widgets/custom_icon_button.dart';

class CatalogBlazersScreen extends StatelessWidget {
  CatalogBlazersScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              _buildFilter(context),
              SizedBox(height: 26.v),
              _buildCatalogBlazers(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitle(
        text: "CATALOG",
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFiHeart,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 15.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCarbonNotificationNew,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 15.v,
            right: 36.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFilter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 7.v),
          child: Text(
            "1500 Blazers",
            style: CustomTextStyles.bodyLargeBlack900,
          ),
        ),
        Spacer(),
        CustomDropDown(
          width: 72.h,
          icon: Container(
            margin: EdgeInsets.fromLTRB(3.h, 9.v, 11.h, 9.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowdownBlueGray90001,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
          hintText: "New",
          items: dropdownItemList,
          onChanged: (value) {},
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(7.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgBiFilter,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconoirSearch,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCatalogBlazers(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 275.v,
          crossAxisCount: 2,
          mainAxisSpacing: 15.h,
          crossAxisSpacing: 15.h,
        ),
        physics: BouncingScrollPhysics(),
        itemCount: 8,
        itemBuilder: (context, index) {
          return CatalogblazersItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
