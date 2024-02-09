import '../profile_overview_page/widgets/productcardlist1_item_widget.dart';
import '../profile_overview_page/widgets/stylepreferencelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfileOverviewPage extends StatefulWidget {
  const ProfileOverviewPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileOverviewPageState createState() => ProfileOverviewPageState();
}

class ProfileOverviewPageState extends State<ProfileOverviewPage>
    with AutomaticKeepAliveClientMixin<ProfileOverviewPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse17,
                        height: 80.adaptSize,
                        width: 80.adaptSize,
                        radius: BorderRadius.circular(
                          40.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      SizedBox(height: 11.v),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Hello, Daph",
                          style: CustomTextStyles.titleMediumBlack900_1,
                        ),
                      ),
                      SizedBox(height: 23.v),
                      Text(
                        "Style Preference",
                        style: CustomTextStyles.titleMediumBluegray90001,
                      ),
                      SizedBox(height: 10.v),
                      _buildStylePreferenceList(context),
                      SizedBox(height: 10.v),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text(
                              "View All",
                              style: CustomTextStyles.titleSmallBluegray90001,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(left: 4.h),
                          ),
                        ],
                      ),
                      SizedBox(height: 19.v),
                      Text(
                        "Saved Items",
                        style: CustomTextStyles.titleMediumBluegray90001,
                      ),
                      SizedBox(height: 9.v),
                      _buildProductCardList(context),
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
  Widget _buildStylePreferenceList(BuildContext context) {
    return SizedBox(
      height: 100.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 6.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return StylepreferencelistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCardList(BuildContext context) {
    return SizedBox(
      height: 309.v,
      child: ListView.separated(
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
          return Productcardlist1ItemWidget();
        },
      ),
    );
  }
}
