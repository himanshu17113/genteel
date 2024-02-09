import '../choose_list_one_screen/widgets/chooselistonelists_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';

class ChooseListOneScreen extends StatelessWidget {
  const ChooseListOneScreen({Key? key})
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
                width: 309.h,
                margin: EdgeInsets.symmetric(horizontal: 12.h),
                child: Text(
                  "What do you show off when wearing clothes.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    height: 1.20,
                  ),
                ),
              ),
              SizedBox(height: 27.v),
              _buildChooseListOneLists(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNext(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildChooseListOneLists(BuildContext context) {
    return Wrap(
      runSpacing: 11.v,
      spacing: 11.h,
      children:
          List<Widget>.generate(7, (index) => ChooselistonelistsItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
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
