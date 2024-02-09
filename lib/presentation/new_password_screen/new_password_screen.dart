import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';
import 'package:genteel/widgets/custom_text_form_field.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
                appTheme.black90001.withOpacity(0.4),
                appTheme.black90001.withOpacity(0.6),
              ],
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgNewPassword,
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
                    vertical: 166.v,
                  ),
                  decoration: AppDecoration.gradientBlackToBlack900013,
                  child: Column(
                    children: [
                      Text(
                        "Enter new password",
                        style: theme.textTheme.headlineLarge,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "Please enter your new password below",
                        style: CustomTextStyles.titleMediumNunitoGray200,
                      ),
                      SizedBox(height: 52.v),
                      CustomTextFormField(
                        controller: newpasswordController,
                        hintText: "Enter new password",
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                        borderDecoration:
                            TextFormFieldStyleHelper.underLineGray,
                      ),
                      SizedBox(height: 33.v),
                      CustomTextFormField(
                        controller: confirmpasswordController,
                        hintText: "Confirm Password",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                        borderDecoration:
                            TextFormFieldStyleHelper.underLineGray,
                      ),
                      SizedBox(height: 34.v),
                      CustomElevatedButton(
                        text: "Reset Password",
                      ),
                      SizedBox(height: 34.v),
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
