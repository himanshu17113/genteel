import '../ai_search_screen/widgets/fiftythreesection_item_widget.dart';
import '../ai_search_screen/widgets/framesection2_item_widget.dart';
import '../ai_search_screen/widgets/framesection3_item_widget.dart';
import '../ai_search_screen/widgets/framesection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_bottom_bar.dart';

class AiSearchScreen extends StatelessWidget {
  AiSearchScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse1568x68,
                  height: 68.adaptSize,
                  width: 68.adaptSize,
                  radius: BorderRadius.circular(
                    34.h,
                  ),
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: 176.h,
                  child: Text(
                    "Welcome to \nAI Search",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.headlineLargeBlack900.copyWith(
                      height: 1.20,
                    ),
                  ),
                ),
                SizedBox(height: 28.v),
                _buildAskMeAnythingSection(context),
                SizedBox(height: 24.v),
                _buildFrameSection1(context),
                SizedBox(height: 26.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Recent Searches".toUpperCase(),
                      style: CustomTextStyles.bodyMediumGray700,
                    ),
                  ),
                ),
                SizedBox(height: 23.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Nearby Fashion Stores",
                      style: CustomTextStyles.titleMediumBluegray90001,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                _buildFrameSection2(context),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: _buildFrameSection(
                    context,
                    text: "View All",
                  ),
                ),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Latest Shoes",
                      style: CustomTextStyles.titleMediumBluegray90001,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                _buildFrameSection4(context),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: _buildFrameSection(
                    context,
                    text: "View All",
                  ),
                ),
                SizedBox(height: 21.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Popular Brands",
                      style: CustomTextStyles.titleMediumBluegray90001,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                _buildFiftyThreeSection(context),
                SizedBox(height: 34.v),
                Container(
                  height: 98.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBarSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildAskMeAnythingSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Ask me anything...",
            style: CustomTextStyles.bodyLargeNunitoGray700,
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgFluentcamera24regular,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMicrophone212,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 16.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSection1(BuildContext context) {
    return Wrap(
      runSpacing: 10.v,
      spacing: 10.h,
      children: List<Widget>.generate(3, (index) => FramesectionItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildFrameSection2(BuildContext context) {
    return SizedBox(
      height: 77.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 6.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return Framesection2ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSection4(BuildContext context) {
    return SizedBox(
      height: 77.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 6.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return Framesection3ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyThreeSection(BuildContext context) {
    return SizedBox(
      height: 130.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 5.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return FiftythreesectionItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildFrameSection(
    BuildContext context, {
    required String text,
  }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            text,
            style: CustomTextStyles.titleSmallBluegray90001.copyWith(
              color: appTheme.blueGray90001,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(left: 4.h),
        ),
      ],
    );
  }
}
