import '../home_page/widgets/productcardlist_item_widget.dart';
import '../home_page/widgets/radiantringcomponent_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 22.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "NEW IN STOCK",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildProductCardList(context),
                    SizedBox(height: 21.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "BRANDS",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgBrand,
                      height: 180.v,
                      width: 375.h,
                    ),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "COLLECTIONS",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildBanner(context),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "FEATURED",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildRadiantRingComponent(context),
                    SizedBox(height: 25.v),
                    _buildTab(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCardList(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 277.v,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 15.h,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return ProductcardlistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBanner(BuildContext context) {
    return SizedBox(
      height: 240.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage12,
            height: 240.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 198.v,
              width: 166.h,
              margin: EdgeInsets.only(right: 19.h),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 198.v,
                      width: 165.h,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Opacity(
                              opacity: 0.5,
                              child: Text(
                                "04",
                                style: CustomTextStyles.loraBluegray900,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 2.h,
                                bottom: 67.v,
                              ),
                              child: Text(
                                "Collection".toUpperCase(),
                                style: CustomTextStyles.labelLargeLoraGray5001,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 58.v),
                      child: Text(
                        "October",
                        style: CustomTextStyles.displayMediumLoraGray5001,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRadiantRingComponent(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 282.v,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 15.h,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return RadiantringcomponentItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTab(BuildContext context) {
    return Container(
      decoration: AppDecoration.white,
      child: Column(
        children:   [
          SizedBox(height: 42),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.outlineGrayA,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 56.v,
                  width: 75.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.white,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSolarHome2Linear,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  height: 56,
                  width: 75,
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 16,
                  ),
                  decoration: AppDecoration.white,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Container(
                  height: 56,
                  width: 75,
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 16,
                  ),
                  decoration: AppDecoration.white,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMingcuteChat4Line,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Container(
                  height: 56.v,
                  width: 75.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.white,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBag,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  decoration: BoxDecoration(
                                    color: appTheme.black900,
                                    borderRadius: BorderRadius.circular(
                                      8.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 4.h),
                                  child: Text(
                                    "3",
                                    style:
                                        CustomTextStyles.labelLargeLoraPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 56.v,
                  width: 75.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.white,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEllipse15,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
