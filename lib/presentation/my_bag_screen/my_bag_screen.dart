import '../my_bag_screen/widgets/itemincart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/app_bar/appbar_leading_image.dart';
import 'package:genteel/widgets/app_bar/appbar_subtitle.dart';
import 'package:genteel/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:genteel/widgets/app_bar/custom_app_bar.dart';
import 'package:genteel/widgets/custom_bottom_bar.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class MyBagScreen extends StatelessWidget {
  const MyBagScreen({Key? key}) : super(key: key);

//  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 9.v),
          child: Column(children: [
            SizedBox(height: 12.v),
            Expanded(
                child: SingleChildScrollView(
                    child: Column(children: [
              Text("You have 3 items in your Bag", style: CustomTextStyles.bodyLargeNunitoBlack900Light),
              SizedBox(height: 25.v),
              _buildItemInCart(context),
              SizedBox(height: 24.v),
              Divider(),
              SizedBox(height: 23.v),
              _buildFrameTwentyEight(context),
              SizedBox(height: 4.v),
              Container(
                  height: 98.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer.withOpacity(1)))
            ])))
          ])),
      //    bottomNavigationBar: _buildBottomBar(context)
    ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "My Bag"),
        actions: [
          AppbarTrailingIconbutton(imagePath: ImageConstant.imgIconoirSearch, margin: EdgeInsets.fromLTRB(20.h, 9.v, 20.h, 10.v))
        ]);
  }

  /// Section Widget
  Widget _buildItemInCart(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.v),
              child: SizedBox(width: double.maxFinite, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray30001)));
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ItemincartItemWidget();
        });
  }

  /// Section Widget
  Widget _buildFrameTwentyEight(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 17.v),
        decoration: AppDecoration.fillGray,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 2.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h),
              child: _buildDiscount(context, discountText: "Total:", priceText: "370")),
          SizedBox(height: 11.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h),
              child: _buildDiscount(context, discountText: "Discount", priceText: "10.99")),
          SizedBox(height: 10.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h),
              child: _buildDiscount(context, discountText: "Delivery Fees ", priceText: "Free")),
          SizedBox(height: 20.v),
          CustomElevatedButton(text: "Checkout - 359 ")
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Common widget
  Widget _buildDiscount(
    BuildContext context, {
    required String discountText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(discountText, style: theme.textTheme.titleSmall!.copyWith(color: appTheme.gray700)),
      Text(priceText, style: theme.textTheme.titleSmall!.copyWith(color: appTheme.gray700))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
