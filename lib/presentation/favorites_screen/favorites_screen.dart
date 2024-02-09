import '../favorites_screen/widgets/luxband_item_widget.dart';import 'package:flutter/material.dart';import 'package:genteel/core/app_export.dart';import 'package:genteel/widgets/app_bar/appbar_leading_image.dart';import 'package:genteel/widgets/app_bar/appbar_subtitle.dart';import 'package:genteel/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:genteel/widgets/app_bar/custom_app_bar.dart';import 'package:genteel/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class FavoritesScreen extends StatelessWidget {FavoritesScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 14.v), _buildLuxBand(context)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 44.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Favorites"), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgIconoirSearch, margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v))]); } 
/// Section Widget
Widget _buildLuxBand(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 278.v, crossAxisCount: 2, mainAxisSpacing: 1.h, crossAxisSpacing: 1.h), physics: NeverScrollableScrollPhysics(), itemCount: 4, itemBuilder: (context, index) {return LuxbandItemWidget();})); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
