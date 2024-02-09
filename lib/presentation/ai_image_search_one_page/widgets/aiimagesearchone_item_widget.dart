import '../widgets/camerafiftyone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class AiimagesearchoneItemWidget extends StatelessWidget {
  const AiimagesearchoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 90.v,
        crossAxisCount: 4,
        mainAxisSpacing: 2.h,
        crossAxisSpacing: 2.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 16,
      itemBuilder: (context, index) {
        return CamerafiftyoneItemWidget();
      },
    );
  }
}
