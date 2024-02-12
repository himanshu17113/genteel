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
    DropdownMenuEntry<String>(label: 'WOMEN', value: 'WOMENkkkk')
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
        surfaceTintColor: Colors.white,
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        leadingWidth: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border_outlined))
        ],
        leading: const SizedBox.shrink(),
        floating: true,
        pinned: true,
        snap: false,
        centerTitle: false,
        title: SizedBox(
          child: DropdownMenu<String>(
            label: null,
            selectedTrailingIcon: Icon(Icons.keyboard_arrow_up_rounded),
            inputDecorationTheme: InputDecorationTheme(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  left: 10,
                ),
                isDense: true),
            trailingIcon: Icon(Icons.keyboard_arrow_down_outlined),
            initialSelection: iconEntries.first.label,
            dropdownMenuEntries: iconEntries,
            onSelected: (icon) {
              setState(() {});
            },
          ),
        ),
        bottom: AppBar(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          //    toolbarHeight: 100,
          leadingWidth: 0,
          leading: const SizedBox.shrink(),
          title: SizedBox(
            width: double.infinity,
            //   height: 98,
            child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                    suffixIconConstraints: const BoxConstraints(minWidth: 80, maxHeight: 40, maxWidth: 100, minHeight: 40),
                    helperStyle: CustomTextStyles.bodyMediumGray700,
                    hintStyle: CustomTextStyles.bodyMediumGray700,
                    filled: true,
                    fillColor: appTheme.gray100,
                    hintText: "Let’s shop for anything..",
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
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
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
                children: [],
              ),
            ),
          ],
        ),
      ),
    ]);
  }

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
