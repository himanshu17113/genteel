import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:genteel/core/app_export.dart';

// ignore: must_be_immutable
class CrystalcomponentItemWidget extends StatelessWidget {
  const CrystalcomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10,
      ),
      child: SizedBox(
        width: SizeUtils.width * .5 - 15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: (SizeUtils.width * .5 - 15) * 1.25,
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgRectangle15200x160,
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.center)),
              child: IconButton(
                icon: Icon(Icons.favorite_outline_rounded,color: Color(0XFFFF4B9D),),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "Crystal Cascade by Joe Waterman",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumBluegray90001.copyWith(
                  height: 1.60,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3),
              child: Text(
                "20 products",
                style: CustomTextStyles.bodyMediumBluegray400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
