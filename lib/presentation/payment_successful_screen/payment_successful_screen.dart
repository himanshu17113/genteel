import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';

class PaymentSuccessfulScreen extends StatelessWidget {
  const PaymentSuccessfulScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 61.adaptSize,
                width: 61.adaptSize,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 61.adaptSize,
                        width: 61.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.greenA400,
                          borderRadius: BorderRadius.circular(
                            30.h,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFiCheckGreenA400,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Text(
                "Payment successful!",
                style: CustomTextStyles.headlineLargeBlack900Regular,
              ),
              SizedBox(height: 11.v),
              Text(
                "Order number: 123467890246Thank you for shopping!",
                style: CustomTextStyles.bodyLargeNunitoGray700,
              ),
              SizedBox(height: 40.v),
              CustomElevatedButton(
                text: "Back to home",
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
