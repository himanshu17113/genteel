import 'package:flutter/material.dart';import 'package:genteel/core/app_export.dart';import 'package:genteel/widgets/app_bar/appbar_leading_image.dart';import 'package:genteel/widgets/app_bar/appbar_subtitle.dart';import 'package:genteel/widgets/app_bar/custom_app_bar.dart';import 'package:genteel/widgets/custom_elevated_button.dart';import 'package:genteel/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AddShippingAddressScreen extends StatelessWidget {AddShippingAddressScreen({Key? key}) : super(key: key);

TextEditingController frameRowController = TextEditingController();

TextEditingController frameRowController1 = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController frameRowController2 = TextEditingController();

TextEditingController frameRowController3 = TextEditingController();

TextEditingController numberToCallValueController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 26.v), child: Column(children: [_buildFrame(context), SizedBox(height: 33.v), _buildAddress(context), SizedBox(height: 37.v), _buildCity(context), SizedBox(height: 35.v), _buildFrame1(context), SizedBox(height: 33.v), _buildNumberToCallValue(context), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildAddAddress(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 44.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 20.h, top: 13.v, bottom: 18.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Shipping Address")); } 
/// Section Widget
Widget _buildFrameRow(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 8.h), child: CustomTextFormField(controller: frameRowController, hintText: "First name"))); } 
/// Section Widget
Widget _buildFrameRow1(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 8.h), child: CustomTextFormField(controller: frameRowController1, hintText: "Last name"))); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildFrameRow(context), _buildFrameRow1(context)])); } 
/// Section Widget
Widget _buildAddress(BuildContext context) { return CustomTextFormField(controller: addressController, hintText: "Address"); } 
/// Section Widget
Widget _buildCity(BuildContext context) { return CustomTextFormField(controller: cityController, hintText: "City"); } 
/// Section Widget
Widget _buildFrameRow2(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 8.h), child: CustomTextFormField(controller: frameRowController2, hintText: "State"))); } 
/// Section Widget
Widget _buildFrameRow3(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 8.h), child: CustomTextFormField(controller: frameRowController3, hintText: "Zip code", textInputType: TextInputType.number))); } 
/// Section Widget
Widget _buildFrame1(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildFrameRow2(context), _buildFrameRow3(context)])); } 
/// Section Widget
Widget _buildNumberToCallValue(BuildContext context) { return CustomTextFormField(controller: numberToCallValueController, hintText: "Number to call", textInputAction: TextInputAction.done, textInputType: TextInputType.number); } 
/// Section Widget
Widget _buildAddAddress(BuildContext context) { return CustomElevatedButton(text: "Add address", margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 68.v)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
