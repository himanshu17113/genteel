import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';
import 'package:genteel/widgets/custom_outlined_button.dart';

class SignInOneScreen extends StatelessWidget {
  const SignInOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.black90001.withOpacity(0.6),
                appTheme.black90001.withOpacity(0.6),
              ],
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSignIn,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 48.v,
              ),
              decoration: AppDecoration.gradientBlackToBlack900011,
              child: Column(
                children: [
                  Spacer(
                    flex: 50,
                  ),
                  Text(
                    "Welcome To Genteel",
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "We’re glad you chose us to shop today",
                    style: CustomTextStyles.titleMediumNunitoGray200,
                  ),
                  SizedBox(height: 51.v),
                  _buildContinueWithApple(context),
                  SizedBox(height: 16.v),
                  _buildContinueWithGoogle(context),
                  SizedBox(height: 16.v),
                  _buildContinueWithFacebook(context),
                  SizedBox(height: 24.v),
                  _buildLine(context),
                  SizedBox(height: 24.v),
                  _buildContinueWithEmail(context),
                  Spacer(
                    flex: 49,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Already",
                          style: CustomTextStyles.bodyLargeNunitofff7f7f7,
                        ),
                        TextSpan(
                          text: " have an account?",
                          style: CustomTextStyles.bodyLargeNunitofff7f7f7,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "Sign in",
                          style: CustomTextStyles.titleMediumNunitoff77f208,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueWithApple(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue with Apple",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgBrands,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
      buttonTextStyle: CustomTextStyles.titleMediumNunitoBlack900_1,
    );
  }

  /// Section Widget
  Widget _buildContinueWithGoogle(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue with Google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgBrandsRed500,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
      buttonTextStyle: CustomTextStyles.titleMediumNunitoBlack900_1,
    );
  }

  /// Section Widget
  Widget _buildContinueWithFacebook(BuildContext context) {
    return CustomOutlinedButton(
      height: 50.v,
      text: "Continue with Facebook",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineOnPrimaryContainer,
      buttonTextStyle: CustomTextStyles.titleMediumNunitoBlack900_1,
    );
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 7.v,
          ),
          child: SizedBox(
            width: 150.h,
            child: Divider(
              color: appTheme.gray300,
            ),
          ),
        ),
        Text(
          "Or".toUpperCase(),
          style: CustomTextStyles.bodyMediumOnPrimaryContainer,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 7.v,
          ),
          child: SizedBox(
            width: 150.h,
            child: Divider(
              color: appTheme.gray300,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildContinueWithEmail(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue with Email",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgEmail2,
          height: 16.v,
          width: 24.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
      buttonTextStyle: CustomTextStyles.titleMediumNunitoBlack900_1,
    );
  }
}
