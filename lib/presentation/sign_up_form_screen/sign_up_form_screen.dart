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
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.black90001.withOpacity(0.2),
                appTheme.black90001.withOpacity(0.6),
              ],
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSignUpForm,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 56.v,
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
                      SizedBox(height: 9.v),
                      Text(
                        "We’re glad you chose us to shop today",
                        style: CustomTextStyles.titleMediumNunitoGray200,
                      ),
                      SizedBox(height: 50.v),
                      CustomTextFormField(
                        controller: emailController,
                        hintText: "Enter Your Email",
                        textInputType: TextInputType.emailAddress,
                        borderDecoration:
                            TextFormFieldStyleHelper.underLineGray,
                      ),
                      SizedBox(height: 33.v),
                      CustomTextFormField(
                        controller: passwordController,
                        hintText: "Enter Your Password",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                        borderDecoration:
                            TextFormFieldStyleHelper.underLineGray,
                      ),
                      SizedBox(height: 34.v),
                      CustomElevatedButton(
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
      ),
    );
  }
}
