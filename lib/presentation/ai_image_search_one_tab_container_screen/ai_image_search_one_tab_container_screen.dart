import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/presentation/ai_image_search_one_page/ai_image_search_one_page.dart';

class AiImageSearchOneTabContainerScreen extends StatefulWidget {
  const AiImageSearchOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AiImageSearchOneTabContainerScreenState createState() =>
      AiImageSearchOneTabContainerScreenState();
}

class AiImageSearchOneTabContainerScreenState
    extends State<AiImageSearchOneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: _buildGallery(context),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGallery(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.v),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 412.v),
          Container(
            height: 4.v,
            width: 41.h,
            decoration: BoxDecoration(
              color: appTheme.blueGray90001,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          SizedBox(height: 22.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 56.h,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCloseSquare41,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 8.v),
                  ),
                  Container(
                    height: 40.v,
                    width: 263.h,
                    margin: EdgeInsets.only(left: 16.h),
                    decoration: BoxDecoration(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                    child: TabBar(
                      controller: tabviewController,
                      labelPadding: EdgeInsets.zero,
                      labelColor:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      labelStyle: TextStyle(
                        fontSize: 16.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w600,
                      ),
                      unselectedLabelColor: appTheme.blueGray90001,
                      unselectedLabelStyle: TextStyle(
                        fontSize: 16.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                      ),
                      indicator: BoxDecoration(
                        color: appTheme.greenA400,
                        borderRadius: BorderRadius.circular(
                          20.h,
                        ),
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            "Recent",
                          ),
                        ),
                        Tab(
                          child: Text(
                            "All",
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Favorite",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 290.v,
            child: TabBarView(
              controller: tabviewController,
              children: [
                AiImageSearchOnePage(),
                AiImageSearchOnePage(),
                AiImageSearchOnePage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
