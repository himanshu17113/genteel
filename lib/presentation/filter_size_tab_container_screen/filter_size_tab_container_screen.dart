import 'package:flutter/material.dart';import 'package:genteel/core/app_export.dart';import 'package:genteel/presentation/filter_size_page/filter_size_page.dart';import 'package:genteel/widgets/app_bar/appbar_leading_image.dart';import 'package:genteel/widgets/app_bar/appbar_subtitle.dart';import 'package:genteel/widgets/app_bar/appbar_subtitle_one.dart';import 'package:genteel/widgets/app_bar/custom_app_bar.dart';class FilterSizeTabContainerScreen extends StatefulWidget {const FilterSizeTabContainerScreen({Key? key}) : super(key: key);

@override FilterSizeTabContainerScreenState createState() =>  FilterSizeTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class FilterSizeTabContainerScreenState extends State<FilterSizeTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 26.v), _buildTabview(context), SizedBox(height: 643.v, child: TabBarView(controller: tabviewController, children: [FilterSizePage(), FilterSizePage(), FilterSizePage()]))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 44.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "Filter"), actions: [AppbarSubtitleOne(text: "Reset", margin: EdgeInsets.fromLTRB(20.h, 18.v, 20.h, 16.v))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 36.v, width: double.maxFinite, child: TabBar(controller: tabviewController, isScrollable: true, labelColor: appTheme.greenA400, labelStyle: TextStyle(fontSize: 17.fSize, fontFamily: 'Lora', fontWeight: FontWeight.w500), unselectedLabelColor: appTheme.gray700, unselectedLabelStyle: TextStyle(fontSize: 17.fSize, fontFamily: 'Lora', fontWeight: FontWeight.w400), indicatorColor: appTheme.greenA400, tabs: [Tab(child: Text("Catalog (2)")), Tab(child: Text("Color (3)")), Tab(child: Text("Size (1)"))])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
