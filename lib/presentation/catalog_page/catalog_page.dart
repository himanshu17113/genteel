import '../catalog_page/widgets/crystalcomponent1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/app_bar/appbar_subtitle.dart';
import 'package:genteel/widgets/app_bar/appbar_trailing_image.dart';
import 'package:genteel/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 10.v,
            right: 20.h,
          ),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 234.v,
              crossAxisCount: 2,
              mainAxisSpacing: 15.h,
              crossAxisSpacing: 15.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Crystalcomponent1ItemWidget();
            },
          ),
        ),
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
}
