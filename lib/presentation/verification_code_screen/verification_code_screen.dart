import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';
import 'package:genteel/widgets/custom_pin_code_text_field.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgVerificationCode,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 162,
            ),
            color: Colors.black54,
            child: Column(
              children: [
                Text(
                  "Verification Code",
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 8),
                SizedBox(
                  width: 330,
                  child: Text(
                    "Please enter the verification code sent to your email",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleMediumNunitoGray200.copyWith(
                      height: 1.40,
                    ),
                  ),
                ),
                SizedBox(height: 28),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: CustomPinCodeTextField(
                    context: context,
                    onChanged: (value) {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: CustomElevatedButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(context, AppRoutes.bottomNavigationScreen, ((route) => false)),
                    text: "Verify",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
