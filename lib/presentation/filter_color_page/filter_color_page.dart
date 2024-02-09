import '../filter_color_page/widgets/ninetyeightlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class FilterColorPage extends StatefulWidget {
  const FilterColorPage({Key? key})
      : super(
          key: key,
        );

  @override
  FilterColorPageState createState() => FilterColorPageState();
}

class FilterColorPageState extends State<FilterColorPage>
    with AutomaticKeepAliveClientMixin<FilterColorPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    _buildNinetyEightList(context),
                    SizedBox(height: 46.v),
                    CustomElevatedButton(
                      text: "Apply filter",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyEightList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 9.5.v),
          child: SizedBox(
            width: 335.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.gray30001,
            ),
          ),
        );
      },
      itemCount: 8,
      itemBuilder: (context, index) {
        return NinetyeightlistItemWidget();
      },
    );
  }
}
