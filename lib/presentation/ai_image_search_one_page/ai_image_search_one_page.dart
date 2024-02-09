import '../ai_image_search_one_page/widgets/aiimagesearchone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AiImageSearchOnePage extends StatefulWidget {
  const AiImageSearchOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  AiImageSearchOnePageState createState() => AiImageSearchOnePageState();
}

class AiImageSearchOnePageState extends State<AiImageSearchOnePage>
    with AutomaticKeepAliveClientMixin<AiImageSearchOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.h),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSearch,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 10.h),
                      ),
                      SizedBox(height: 26.v),
                      _buildAiImageSearchOne(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAiImageSearchOne(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return AiimagesearchoneItemWidget();
        },
      ),
    );
  }
}
