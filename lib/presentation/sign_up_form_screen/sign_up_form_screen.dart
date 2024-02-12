import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';
import 'package:genteel/widgets/custom_text_form_field.dart';

class SignUpFormScreen extends StatelessWidget {
  SignUpFormScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   begin: Alignment(0.5, 0),
            //   end: Alignment(0.5, 1),
            //   colors: [
            //     appTheme.black90001.withOpacity(1),
            //     appTheme.red500.withOpacity(1),
            //   ],
            // ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSignUpForm,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 56,
                ),
                decoration: AppDecoration.gradientBlackToBlack900013,
                child: Column(
                  children: [
                    Spacer(
                      flex: 32,
                    ),
                    Text(
                      "Welcome To Genteel",
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 9),
                    Text(
                      "We’re glad you chose us to shop today",
                      style: CustomTextStyles.titleMediumNunitoGray200,
                    ),
                    SizedBox(height: 50),
                    CustomTextFormField(
                      controller: emailController,
                      hintText: "Enter Your Email",
                      textInputType: TextInputType.emailAddress,
                      borderDecoration: TextFormFieldStyleHelper.underLineGray,
                    ),
                    SizedBox(height: 33),
                    CustomTextFormField(
                      controller: passwordController,
                      hintText: "Enter Your Password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                      borderDecoration: TextFormFieldStyleHelper.underLineGray,
                    ),
                    SizedBox(height: 34),
                    CustomElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, AppRoutes.chooseListScreen),
                      text: "Continue",
                    ),
                    Spacer(
                      flex: 67,
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
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.pushReplacementNamed(context, AppRoutes.signInEmailScreen),
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
      ),
    );
  }
}
