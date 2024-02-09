import 'package:flutter/widgets.dart';

import 'widgets/crystalcomponent_item_widget.dart';
import 'widgets/gemglowcomponent_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

import 'package:genteel/widgets/custom_search_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  final List<DropdownMenuEntry<String>> iconEntries = <DropdownMenuEntry<String>>[
    DropdownMenuEntry<String>(label: 'WOMEN', value: 'WOMEN')
  ];
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        leadingWidth: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border_outlined))
        ],
        leading: const SizedBox.shrink(),
        //     backgroundColor: const Color.fromARGB(240, 0, 0, 0),
        floating: true,
        pinned: true,
        snap: false,
        centerTitle: false,
        title: DropdownMenu<String>(
          initialSelection: iconEntries.first.label,
          //  controller: iconController,
          dropdownMenuEntries: iconEntries,
          onSelected: (icon) {
            setState(() {
              //    selectedIcon = icon;
            });
          },
        ),
        bottom: AppBar(
          toolbarHeight: 100,
          leadingWidth: 0,
          leading: const SizedBox.shrink(),
          // forceMaterialTransparency: true,
          //   backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          title: SizedBox(
            width: double.infinity,
            height: 98,
            //  color: const Color.fromARGB(240, 0, 0, 0),
            child: TextField(
                controller: searchController,
                //    style: inputtextStyle,
                decoration: InputDecoration(
                    suffixIconConstraints: const BoxConstraints(minWidth: 80, maxHeight: 40, maxWidth: 100, minHeight: 40),
                    helperStyle: CustomTextStyles.bodyMediumGray700,
                    hintStyle: CustomTextStyles.bodyMediumGray700,
                    filled: true,
                    fillColor: appTheme.gray100,
                    hintText:  "Let’s shop for anything..",
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: Row(
                      children: [],
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
                    border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)))),
          ),
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate(
          [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Let’s shop for anything..",
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(height: 24.v),
            Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "TRENDING NOW",
                style: theme.textTheme.titleLarge,
              ),
            ),
            SizedBox(height: 15.v),
            _buildCrystalComponent(context),
            SizedBox(height: 21.v),
            Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "RECOMMENDED",
                style: theme.textTheme.titleLarge,
              ),
            ),
            SizedBox(height: 6.v),
            Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Get 10% off on purchase in",
                      style: CustomTextStyles.bodyMediumff61646414,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "11:59:59hrs",
                      style: CustomTextStyles.titleSmallNunitoffff4b9d,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 14.v),
            _buildGemGlowComponent(context),
            SizedBox(height: 24.v),
            Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text(
                "Categories",
                style: CustomTextStyles.titleLarge_1,
              ),
            ),
            SizedBox(height: 16.v),
            _buildTabview(context),
            SizedBox(
              height: 1349.v,
              child: TabBarView(
                controller: tabviewController,
                children: [
                  // HomeScreen(),
                  // HomeScreen(),
                  // HomeScreen(),
                  // HomeScreen(),
                  // HomeScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }

  /// Section Widget

  /// Section Widget
  Widget _buildCrystalComponent(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 284.v,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 19.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 14.h,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return CrystalcomponentItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGemGlowComponent(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 274.v,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 15.h,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return GemglowcomponentItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 29.v,
      width: 351.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        tabs: [
          Tab(
            child: Column(
              children: [
                Text(
                  "All",
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgDot,
                  height: 4.adaptSize,
                  width: 4.adaptSize,
                  margin: EdgeInsets.only(top: 4.v),
                ),
              ],
            ),
          ),
          Tab(
            child: Text(
              "Jackets & Blazers",
            ),
          ),
          Tab(
            child: Text(
              "Dresses",
            ),
          ),
          Tab(
            child: Text(
              "Jewelries",
            ),
          ),
          Tab(
            child: Text(
              "Shirts",
            ),
          ),
        ],
      ),
    );
  }
}
