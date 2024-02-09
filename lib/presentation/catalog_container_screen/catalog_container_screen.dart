import 'package:flutter/material.dart';import 'package:genteel/core/app_export.dart';import 'package:genteel/presentation/catalog_page/catalog_page.dart';import 'package:genteel/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class CatalogContainerScreen extends StatelessWidget {CatalogContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.catalogPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {}); } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.catalogPage: return CatalogPage(); default: return CatalogPage();} } 
 }
