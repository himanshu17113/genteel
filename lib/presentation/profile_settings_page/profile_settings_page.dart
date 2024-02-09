import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_checkbox_button.dart';
import 'package:genteel/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ProfileSettingsPage extends StatefulWidget {
  const ProfileSettingsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileSettingsPageState createState() => ProfileSettingsPageState();
}

class ProfileSettingsPageState extends State<ProfileSettingsPage>
    with AutomaticKeepAliveClientMixin<ProfileSettingsPage> {
  bool privacyPolicy = false;

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
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse17,
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      radius: BorderRadius.circular(
                        40.h,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Text(
                      "Hello, Daph",
                      style: CustomTextStyles.titleMediumBlack900_1,
                    ),
                    SizedBox(height: 39.v),
                    _buildLocationSection(
                      context,
                      globeImage: ImageConstant.imgFiUser,
                      locationText: "Personal infomation",
                    ),
                    SizedBox(height: 17.v),
                    Divider(),
                    SizedBox(height: 30.v),
                    _buildOrderSection(context),
                    SizedBox(height: 17.v),
                    Divider(),
                    SizedBox(height: 30.v),
                    _buildPrivacySection(context),
                    SizedBox(height: 16.v),
                    Divider(),
                    SizedBox(height: 30.v),
                    _buildLocationSection(
                      context,
                      globeImage: ImageConstant.imgFiGlobe,
                      locationText: "Location & Language",
                    ),
                    SizedBox(height: 49.v),
                    CustomOutlinedButton(
                      height: 46.v,
                      text: "Log out",
                      buttonStyle: CustomButtonStyles.outlinePink,
                      buttonTextStyle: CustomTextStyles.titleMediumNunito,
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
  Widget _buildOrderSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgBagBlack900,
          height: 22.adaptSize,
          width: 22.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            "Orders",
            style: CustomTextStyles.bodyLargeNunitoBlack900,
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray400,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPrivacySection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCheckboxButton(
          text: "Privacy Policy",
          value: privacyPolicy,
          textStyle: CustomTextStyles.bodyLargeNunitoBlack900,
          onChange: (value) {
            privacyPolicy = value;
          },
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray400,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildLocationSection(
    BuildContext context, {
    required String globeImage,
    required String locationText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: globeImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            locationText,
            style: CustomTextStyles.bodyLargeNunitoBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray400,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
