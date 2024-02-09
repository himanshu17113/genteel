import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';
import 'package:genteel/widgets/custom_outlined_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key})
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
          decoration: BoxDecoration(
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
                horizontal: 20,
                vertical: 48,
              ),
              decoration: AppDecoration.gradientBlackToBlack900011,
              child: Column(
                children: [
                  Text(
                    "Welcome back Daph",
                    style: theme.textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Please log in to continue shopping",
                    style: CustomTextStyles.titleMediumNunitoGray200,
                  ),
                  SizedBox(height: 51),
                  _buildContinueWithApple(context),
                  SizedBox(height: 16),
                  _buildContinueWithGoogle(context),
                  SizedBox(height: 16),
                  _buildContinueWithFacebook(context),
                  SizedBox(height: 24),
                  _buildLine(context),
                  SizedBox(height: 24),
                  _buildContinueWithEmail(context),
                  Spacer(
                    flex: 49,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don’t have an account?",
                          style: CustomTextStyles.bodyLargeNunitofff7f7f7,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "Sign up",
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
      leftIcon: Padding(
          padding: EdgeInsets.only(right: 30.h),
          child: SvgPicture.asset(
            ImageConstant.imgBrands,
            height: 24.adaptSize,
            width: 24.adaptSize,
          )),
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
        child: SvgPicture.asset(
          ImageConstant.imgBrandsRed500,
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
        child: SvgPicture.asset(
          ImageConstant.imgFacebook,
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
      onPressed: () => Navigator.pushNamed(context, AppRoutes.signInEmailScreen),
      text: "Continue with Email",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: SvgPicture.asset(
          ImageConstant.imgEmail2,
          height: 16.v,
          width: 24.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
      buttonTextStyle: CustomTextStyles.titleMediumNunitoBlack900_1,
    );
  }
}
