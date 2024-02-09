import 'package:flutter/material.dart';import 'package:genteel/core/app_export.dart';import 'package:genteel/widgets/app_bar/appbar_title.dart';import 'package:genteel/widgets/app_bar/appbar_title_image.dart';import 'package:genteel/widgets/app_bar/appbar_trailing_circleimage.dart';import 'package:genteel/widgets/app_bar/custom_app_bar.dart';import 'package:genteel/widgets/custom_elevated_button.dart';import 'package:genteel/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AiChatScreen extends StatelessWidget {AiChatScreen({Key? key}) : super(key: key);

TextEditingController messageController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v), child: Column(children: [_buildComponentSeven(context), SizedBox(height: 32.v), _buildYou(context, canYouProvide: "Hello AI, can you give me 2 ways to style a grey pants and white top?"), SizedBox(height: 20.v), _buildAi(context), SizedBox(height: 20.v), _buildYou(context, canYouProvide: "Can you provide images of the style you described above?"), SizedBox(height: 20.v), _buildAiChat(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildMessage(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 69.v, title: Padding(padding: EdgeInsets.only(left: 20.h), child: Column(children: [Padding(padding: EdgeInsets.only(right: 17.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.symmetric(vertical: 8.v), onTap: () {onTapArrowLeft(context);}), AppbarTitle(text: "Genteel AI", margin: EdgeInsets.only(left: 10.h))])), SizedBox(height: 7.v), Align(alignment: Alignment.centerLeft, child: RichText(text: TextSpan(children: [TextSpan(text: "Chat and ", style: CustomTextStyles.bodyMediumff333737), TextSpan(text: "personalize your feed!", style: CustomTextStyles.titleSmallNunitoffff4b9d)]), textAlign: TextAlign.left))])), actions: [AppbarTrailingCircleimage(imagePath: ImageConstant.imgEllipse16, margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 28.v))]); } 
/// Section Widget
Widget _buildComponentSeven(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(children: [CustomElevatedButton(height: 44.v, width: 59.h, text: "Chat", buttonStyle: CustomButtonStyles.fillGreenA, buttonTextStyle: CustomTextStyles.titleMediumNunitoOnPrimaryContainer), Padding(padding: EdgeInsets.only(left: 12.h, top: 11.v, bottom: 10.v), child: Text("Image", style: CustomTextStyles.titleMediumNunitoBluegray400)), Padding(padding: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), child: Text("Video", style: CustomTextStyles.titleMediumNunitoBluegray400))])), CustomImageView(imagePath: ImageConstant.imgSearchBlack900, height: 36.v, width: 48.h, margin: EdgeInsets.symmetric(vertical: 4.v))]); } 
/// Section Widget
Widget _buildAi(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgPlay, height: 31.adaptSize, width: 31.adaptSize, margin: EdgeInsets.only(bottom: 113.v)), Expanded(child: Container(margin: EdgeInsets.only(left: 9.h), padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 3.v), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 9.v), Container(width: 219.h, margin: EdgeInsets.only(right: 26.h), child: Text("Certainly! Here are quick style tips for grey pants and a white top:", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(height: 1.50))), SizedBox(height: 8.v), Align(alignment: Alignment.center, child: SizedBox(height: 80.v, width: 230.h, child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.topCenter, child: SizedBox(width: 229.h, child: RichText(text: TextSpan(children: [TextSpan(text: "Casual Chic:", style: CustomTextStyles.labelLargeff090a0a), TextSpan(text: " "), TextSpan(text: "Add bold accessories and sneakers", style: CustomTextStyles.bodySmallNunitoff090a0a)]), textAlign: TextAlign.left))), Align(alignment: Alignment.bottomLeft, child: SizedBox(width: 205.h, child: RichText(text: TextSpan(children: [TextSpan(text: "Monochromatic Glam:", style: CustomTextStyles.labelLargeff090a0a), TextSpan(text: " "), TextSpan(text: "Use silver accents, opt for heels.", style: CustomTextStyles.bodySmallNunitoff090a0a)]), textAlign: TextAlign.left)))])))])))])), Padding(padding: EdgeInsets.only(left: 9.h, bottom: 99.v), child: _buildIcons(context))]); } 
/// Section Widget
Widget _buildAiChat(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgPlay, height: 31.adaptSize, width: 31.adaptSize, margin: EdgeInsets.only(bottom: 119.v)), Expanded(child: Container(margin: EdgeInsets.only(left: 9.h), padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 9.v), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: 219.h, margin: EdgeInsets.only(right: 26.h), child: Text("Sure Here are two images for ways to style a grey pants and a white top:", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(height: 1.50))), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(right: 26.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImage10, height: 80.v, width: 105.h, radius: BorderRadius.circular(2.h)), CustomImageView(imagePath: ImageConstant.imgImage14, height: 80.v, width: 105.h, radius: BorderRadius.circular(2.h), margin: EdgeInsets.only(left: 9.h))])), SizedBox(height: 3.v)]))), Padding(padding: EdgeInsets.only(left: 9.h, bottom: 105.v), child: _buildIcons(context))]); } 
/// Section Widget
Widget _buildMessage(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 36.v), child: CustomTextFormField(controller: messageController, hintText: "Type your message here!", hintStyle: CustomTextStyles.bodyMediumGray700Light, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 14.v), child: CustomImageView(imagePath: ImageConstant.imgFluentcamera24regular, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 52.v))); } 
/// Common widget
Widget _buildYou(BuildContext context, {required String canYouProvide, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgEllipse1631x31, height: 31.adaptSize, width: 31.adaptSize, radius: BorderRadius.circular(15.h), margin: EdgeInsets.only(bottom: 26.v)), Container(margin: EdgeInsets.only(left: 9.h), padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 8.v), decoration: AppDecoration.fillLightGreenF.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(width: 232.h, margin: EdgeInsets.only(right: 38.h), child: Text(canYouProvide, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(color: appTheme.black900, height: 1.50))))]); } 
/// Common widget
Widget _buildIcons(BuildContext context) { return Column(children: [CustomImageView(imagePath: ImageConstant.imgPrimeCopy, height: 20.adaptSize, width: 20.adaptSize), SizedBox(height: 8.v), CustomImageView(imagePath: ImageConstant.imgFiShare2BlueGray400, height: 17.adaptSize, width: 17.adaptSize)]); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
