import '../blazer_details_screen/widgets/gemglowcomponentgrid_item_widget.dart';
import '../blazer_details_screen/widgets/slider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_checkbox_button.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';
import 'package:genteel/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BlazerDetailsScreen extends StatelessWidget {
  BlazerDetailsScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  bool customerreviews = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 12.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 65.v),
                    child: Column(
                      children: [
                        _buildSlider(context),
                        SizedBox(height: 16.v),
                        SizedBox(
                          height: 8.v,
                          child: AnimatedSmoothIndicator(
                            activeIndex: sliderIndex,
                            count: 2,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                              spacing: 6,
                              activeDotColor: appTheme.greenA400,
                              dotHeight: 8.v,
                              dotWidth: 8.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.v),
                        _buildShawlCollarRow(context),
                        SizedBox(height: 11.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Text(
                              "Rounded Collar, continuous Blazer ",
                              style: CustomTextStyles.bodyLargeBluegray90001,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Text(
                              "150",
                              style: CustomTextStyles.headlineSmallPink300,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 20.h,
                              right: 110.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Color",
                                  style: CustomTextStyles.titleMediumBlack900_1,
                                ),
                                Text(
                                  "Size Guide",
                                  style: CustomTextStyles.titleMediumBlack900_1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 12.v),
                        _buildNinetySixRow(context),
                        SizedBox(height: 30.v),
                        _buildFrameRow(context),
                        SizedBox(height: 33.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 23.h),
                            child: Text(
                              "Care",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Container(
                          width: 326.h,
                          margin: EdgeInsets.only(
                            left: 23.h,
                            right: 24.h,
                          ),
                          child: Text(
                            "To keep your blazers clean, avoid over-washing, air out after washing, brush gently to remove dust and lint, store away from direct sunlight. Use padded hangers to maintain shape, Read care labels for specific instructions.",
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyLargeNunitoBluegray90001
                                .copyWith(
                              height: 1.60,
                            ),
                          ),
                        ),
                        SizedBox(height: 32.v),
                        _buildFiftyOneRow(context),
                        SizedBox(height: 11.v),
                        Container(
                          width: 321.h,
                          margin: EdgeInsets.only(
                            left: 23.h,
                            right: 29.h,
                          ),
                          child: Text(
                            "A blazer effortlessly blend style and versatility. Whether paired with jeans or worn over a dress skirt. A blazer can:\r\n- Enhance physique and exudes confidence. \r\n- Complements various outfits, from jeans to dress skirts.",
                            maxLines: 7,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyLargeNunitoBlack900Light
                                .copyWith(
                              height: 1.60,
                            ),
                          ),
                        ),
                        SizedBox(height: 17.v),
                        _buildCustomerreviews(context),
                        SizedBox(height: 38.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text(
                              "You may also like",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.v),
                        _buildGemGlowComponentGrid(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 420.v,
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 1.0,
        enableInfiniteScroll: false,
        scrollDirection: Axis.horizontal,
        onPageChanged: (
          index,
          reason,
        ) {
          sliderIndex = index;
        },
      ),
      itemCount: 2,
      itemBuilder: (context, index, realIndex) {
        return SliderItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildShawlCollarRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "Shawl Collar",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFiShare2,
            height: 24.v,
            width: 23.h,
            margin: EdgeInsets.only(bottom: 9.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetySixRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 88.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(4.h),
                  decoration: IconButtonStyleHelper.fillGrayTL12,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFiCheck,
                  ),
                ),
                Container(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(
                      12.h,
                    ),
                  ),
                ),
                Container(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.errorContainer,
                    borderRadius: BorderRadius.circular(
                      12.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 24.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 5.v,
                ),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder12,
                ),
                child: Text(
                  "S",
                  style: CustomTextStyles.bodySmallTenorSansBluegray90001,
                ),
              ),
              Container(
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 8.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 7.h,
                  vertical: 5.v,
                ),
                decoration: AppDecoration.fillBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder12,
                ),
                child: Text(
                  "M",
                  style: CustomTextStyles.bodySmallTenorSansPrimary,
                ),
              ),
              Container(
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 8.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 5.v,
                ),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder12,
                ),
                child: Text(
                  "L",
                  style: CustomTextStyles.bodySmallTenorSansBluegray90001,
                ),
              ),
              Container(
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 8.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 4.h,
                  vertical: 5.v,
                ),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder12,
                ),
                child: Text(
                  "XL",
                  style: CustomTextStyles.bodySmallTenorSansBluegray90001,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 2.v,
                ),
                child: Text(
                  "More...",
                  style: CustomTextStyles.bodyMediumGray500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 124.h,
            margin: EdgeInsets.symmetric(vertical: 1.v),
            padding: EdgeInsets.symmetric(vertical: 11.v),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconPlaceholder,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                ),
                Text(
                  "1",
                  style: CustomTextStyles.titleMediumBlack900Bold,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIconPlaceholderBlack900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            width: 191.h,
            text: "Add to bag",
            margin: EdgeInsets.only(left: 20.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyOneRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "Description",
              style: theme.textTheme.titleLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowUp,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 3.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCustomerreviews(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: CustomCheckboxButton(
        width: 328.h,
        text: "Customer reviews",
        value: customerreviews,
        isRightCheck: true,
        onChange: (value) {
          customerreviews = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGemGlowComponentGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 275.v,
          crossAxisCount: 2,
          mainAxisSpacing: 15.h,
          crossAxisSpacing: 15.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return GemglowcomponentgridItemWidget();
        },
      ),
    );
  }
}
