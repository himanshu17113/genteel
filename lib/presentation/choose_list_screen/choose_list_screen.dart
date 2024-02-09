import '../choose_list_screen/widgets/chooselistchipview_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';

class ChooseListScreen extends StatelessWidget {
  const ChooseListScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 34.v,
          ),
          child: Column(
            children: [
              Container(
                width: 321.h,
                margin: EdgeInsets.only(
                  left: 6.h,
                  right: 7.h,
                ),
                child: Text(
                  "First, what are the reasons you’re excited to try Genteel.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    height: 1.20,
                  ),
                ),
              ),
              SizedBox(height: 27.v),
              _buildChooseListChipView(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNextButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildChooseListChipView(BuildContext context) {
    return Wrap(
      runSpacing: 11.v,
      spacing: 11.h,
      children:
          List<Widget>.generate(9, (index) => ChooselistchipviewItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Next",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 68.v,
      ),
    );
  }
}
