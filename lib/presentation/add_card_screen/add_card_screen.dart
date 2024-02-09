import '../add_card_screen/widgets/creditcardform_item_widget.dart';import 'package:flutter/material.dart';import 'package:genteel/core/app_export.dart';import 'package:genteel/widgets/app_bar/appbar_leading_image.dart';import 'package:genteel/widgets/app_bar/appbar_subtitle.dart';import 'package:genteel/widgets/app_bar/custom_app_bar.dart';import 'package:genteel/widgets/custom_elevated_button.dart';import 'package:genteel/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AddCardScreen extends StatelessWidget {AddCardScreen({Key? key}) : super(key: key);

TextEditingController nameController = TextEditingController();

TextEditingController cardNumberController = TextEditingController();

TextEditingController cvvController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v), child: Column(children: [_buildCreditCardForm(context), SizedBox(height: 38.v), _buildName(context), SizedBox(height: 35.v), _buildCardNumber(context), SizedBox(height: 35.v), _buildFrame(context), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildAddCard(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 44.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 20.h, top: 13.v, bottom: 18.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Payment Method")); } 
/// Section Widget
Widget _buildCreditCardForm(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 20.v);}, itemCount: 2, itemBuilder: (context, index) {return CreditcardformItemWidget();}); } 
/// Section Widget
Widget _buildName(BuildContext context) { return CustomTextFormField(controller: nameController, hintText: "Cardholder name"); } 
/// Section Widget
Widget _buildCardNumber(BuildContext context) { return CustomTextFormField(controller: cardNumberController, hintText: "Card number", textInputType: TextInputType.number); } 
/// Section Widget
Widget _buildCvv(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 8.h), child: CustomTextFormField(controller: cvvController, hintText: "CVV", textInputAction: TextInputAction.done))); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: EdgeInsets.only(right: 8.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 14.v), child: Text("Date", style: theme.textTheme.bodyLarge)), Padding(padding: EdgeInsets.only(top: 34.v), child: SizedBox(width: 158.h, child: Divider()))]))), _buildCvv(context)])); } 
/// Section Widget
Widget _buildAddCard(BuildContext context) { return CustomElevatedButton(text: "Add card", margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 68.v)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
