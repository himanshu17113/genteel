import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';
import 'package:genteel/widgets/custom_text_form_field.dart';

class SignInEmailScreen extends StatelessWidget {
  SignInEmailScreen({Key? key})
      : super(
          key: key,
        );

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: DecoratedBox(
          decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   begin: Alignment(0.5, 0),
            //   end: Alignment(0.5, 1),
            //   colors: [
            //     appTheme.black90001.withOpacity(0.2),
            //     appTheme.black90001.withOpacity(0.75),
            //   ],
            // ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSignIn,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formKey,
            child: Container(
              color: Colors.black38,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 60,
              ),
              // decoration: AppDecoration.gradientBlackToBlack900013,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 53,
                  ),
                  Text(
                    "Welcome back Daph",
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Please log in to continue shopping",
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
                  SizedBox(height: 17),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen),
                      child: Text(
                        "Forgot Password?",
                        style: CustomTextStyles.bodyLargeNunitoLightgreenA200e5,
                      ),
                    ),
                  ),
                  SizedBox(height: 31),
                  CustomElevatedButton(
                    text: "Sign in",
                  ),
                  Spacer(
                    flex: 63,
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
}
