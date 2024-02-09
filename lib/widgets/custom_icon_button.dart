import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.gray400,
                  borderRadius: BorderRadius.circular(18.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGrayTL12 => BoxDecoration(
        color: appTheme.gray50002,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillGrayTL8 => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001.withOpacity(0.45),
        borderRadius: BorderRadius.circular(1.h),
      );
  static BoxDecoration get fillBlackTL20 => BoxDecoration(
        color: appTheme.black90001.withOpacity(0.56),
        borderRadius: BorderRadius.circular(20.h),
      );
}
