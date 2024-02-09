import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Onboarding One",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.onboardingOneScreen),
                        // ),
                        // _buildScreenTitle(
                        //   context,
                        //   screenTitle: "Onboarding Two",
                        //   onTapScreenTitle: () => onTapScreenTitle(
                        //       context, AppRoutes.onboardingTwoScreen),
                        // ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In Form",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.signInEmailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verification Code",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.verificationCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "New Password",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.newPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In One",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.signInOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up Form",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.signUpFormScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Choose List",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.chooseListScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Choose List One",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.chooseListOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Redirecting To Homepage",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.redirectingToHomepageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Catalog - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.catalogContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Catalog/ Blazers",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.catalogBlazersScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Blazer - Details",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.blazerDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Bag",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.myBagScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Favorites",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.favoritesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Checkout",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.checkoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Shipping Address",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.addShippingAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Card",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.addCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Checkout One",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.checkoutOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Successful",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.paymentSuccessfulScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "AI Search",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.aiSearchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "AI Chat",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.aiChatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "AI Image Search One - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.aiImageSearchOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "AI Image Search",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.aiImageSearchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filter - Category - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.filterCategoryTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filter - Color - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.filterColorTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filter - Size - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.filterSizeTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile - Overview - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.profileOverviewTabContainerScreen),
                        ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
