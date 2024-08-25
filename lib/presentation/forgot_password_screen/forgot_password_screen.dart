import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';
import 'package:genteel/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            //     appTheme.gray90000,
            //     appTheme.black90001.withOpacity(0.9),
            //   ],
            // ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSignIn,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 166,
            ),
            color: Colors.black45,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(
                    "Forgot password?",
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "We will send a verification code to you",
                    style: CustomTextStyles.titleMediumNunitoGray200,
                  ),
                  SizedBox(height: 50.v),
                  CustomTextFormField(
                    controller: emailController,
                    hintText: "Enter Your Email",
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                    borderDecoration: TextFormFieldStyleHelper.underLineGray,
                  ),
                  SizedBox(height: 39.v),
                  CustomElevatedButton(
                    text: "Send",
                    onPressed: () => Navigator.pushNamed(context, AppRoutes.verificationCodeScreen,arguments: []),
                  ),
                  SizedBox(height: 39.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
