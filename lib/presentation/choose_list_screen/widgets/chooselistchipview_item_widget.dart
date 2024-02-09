import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class ChooselistchipviewItemWidget extends StatelessWidget {
  const ChooselistchipviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 9.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Browse a curated shop",
          style: TextStyle(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            fontSize: 13.fSize,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.greenA400,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray700,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            18.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
