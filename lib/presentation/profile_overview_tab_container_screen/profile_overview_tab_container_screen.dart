import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/presentation/profile_overview_page/profile_overview_page.dart';
import 'package:genteel/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:genteel/widgets/app_bar/appbar_leading_image.dart';
import 'package:genteel/widgets/app_bar/appbar_subtitle.dart';
import 'package:genteel/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:genteel/widgets/app_bar/custom_app_bar.dart';
import 'package:genteel/widgets/custom_bottom_bar.dart';

class ProfileOverviewTabContainerScreen extends StatefulWidget {
  const ProfileOverviewTabContainerScreen({Key? key}) : super(key: key);

  @override
  ProfileOverviewTabContainerScreenState createState() => ProfileOverviewTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class ProfileOverviewTabContainerScreenState extends State<ProfileOverviewTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: _buildAppBar(context),
      body: SizedBox(
          width: double.maxFinite,
          child: Column(children: [
            SizedBox(height: 26.v),
            Expanded(
                child: SingleChildScrollView(
                    child: Column(children: [
              _buildTabview(context),
              SizedBox(
                  height: 703.v,
                  child: TabBarView(controller: tabviewController, children: [ProfileOverviewPage(), ProfileSettingsPage()]))
            ])))
          ])),
      //  bottomNavigationBar: _buildBottomBar(context)
    ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "My Account"),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgIconoirSearch, margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v))
        ]);
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
        height: 38.v,
        width: double.maxFinite,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.greenA400,
            labelStyle: TextStyle(fontSize: 17.fSize, fontFamily: 'Lora', fontWeight: FontWeight.w500),
            unselectedLabelColor: appTheme.gray700,
            unselectedLabelStyle: TextStyle(fontSize: 17.fSize, fontFamily: 'Lora', fontWeight: FontWeight.w400),
            indicatorColor: appTheme.greenA400,
            tabs: [Tab(child: Text("Overview")), Tab(child: Text("Settings"))]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
