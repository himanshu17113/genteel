import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

class RedirectingToHomepageScreen extends StatelessWidget {
  const RedirectingToHomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.black900.withOpacity(0.9),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.9),
                    image: DecorationImage(image: AssetImage(ImageConstant.imgRedirectingToHomepage), fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 42.h),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgSpinnerGreenA400,
                          height: 51.adaptSize,
                          width: 51.adaptSize,
                          onTap: () {
                            onTapImgSpinner(context);
                          }),
                      SizedBox(height: 32.v),
                      Text("Great, we’re picking your style.", style: CustomTextStyles.titleLargeOnPrimaryContainer),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the signInFormScreen when the action is triggered.
  onTapImgSpinner(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInEmailScreen);
  }
}
