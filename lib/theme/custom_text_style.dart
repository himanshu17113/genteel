import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400.withOpacity(0.8),
      );
  static get bodyLargeBluegray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
        fontSize: 17.fSize,
      );
  static get bodyLargeNunitoBlack900 =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
      );
  static get bodyLargeNunitoBlack900Light =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeNunitoBlack900_1 =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeNunitoBluegray90001 =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeNunitoBluegray90001_1 =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyLargeNunitoGray100 =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: appTheme.gray100,
      );
  static get bodyLargeNunitoGray700 =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: appTheme.gray700,
      );
  static  get bodyLargeNunitoLightgreenA200e5 =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: appTheme.lightGreenA200E5,
      );
  static get bodyLargeNunitoOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyLargeNunitofff7f7f7 =>
      theme.textTheme.bodyLarge!.nunito.copyWith(
        color: Color(0XFFF7F7F7),
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBluegray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray700Light => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumLoraBluegray400 =>
      theme.textTheme.bodyMedium!.lora.copyWith(
        color: appTheme.blueGray400,
        fontSize: 14.fSize,
      );
  static get bodyMediumLoraBluegray90001 =>
      theme.textTheme.bodyMedium!.lora.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.67),
        fontSize: 14.fSize,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumPoppinsBluegray90001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsGray700 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumff333737 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF333737),
        fontSize: 14.fSize,
      );
  static get bodyMediumff616464 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF616464),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumff61646414 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF616464),
        fontSize: 14.fSize,
      );
  static get bodySmallNunitoBluegray90001 =>
      theme.textTheme.bodySmall!.nunito.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 10.fSize,
      );
  static get bodySmallNunitoff090a0a =>
      theme.textTheme.bodySmall!.nunito.copyWith(
        color: Color(0XFF090A0A),
      );
  static get bodySmallTenorSansBluegray90001 =>
      theme.textTheme.bodySmall!.tenorSans.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 10.fSize,
      );
  static get bodySmallTenorSansPrimary =>
      theme.textTheme.bodySmall!.tenorSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  // Display text style
  static get displayMediumLoraGray5001 =>
      theme.textTheme.displayMedium!.lora.copyWith(
        color: appTheme.gray5001,
        fontSize: 41.fSize,
      );
  // Headline text style
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
      );
  static get headlineLargeBlack900Regular =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeBluegray90001 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get headlineSmallPink300 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.pink300,
      );
  // Label text style
  static get labelLargeLoraGray5001 =>
      theme.textTheme.labelLarge!.lora.copyWith(
        color: appTheme.gray5001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLoraPrimary => theme.textTheme.labelLarge!.lora.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLoraffa3a7a7 =>
      theme.textTheme.labelLarge!.lora.copyWith(
        color: Color(0XFFA3A7A7),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get labelLargeff090a0a => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF090A0A),
      );
  static get labelLargeff090a0aSemiBold => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF090A0A),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGreenA400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.greenA400,
      );
  // Lora text style
  static get loraBluegray900 => TextStyle(
        color: appTheme.blueGray900.withOpacity(0.53),
        fontSize: 162.fSize,
        fontWeight: FontWeight.w600,
      ).lora;
  // Title text style
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBluegray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleMediumGreenA400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA400,
        fontSize: 17.fSize,
      );
  static get titleMediumNunito => theme.textTheme.titleMedium!.nunito.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoBlack900 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoBlack90017 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
      );
  static get titleMediumNunitoBlack900SemiBold =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoBlack900_1 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumNunitoBluegray400 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleMediumNunitoBluegray400SemiBold =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoBluegray90001 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoGray200 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.gray200,
      );
  static get titleMediumNunitoOnError =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleMediumNunitoOnPrimaryContainer =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoOnPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumNunitoff77f208 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: Color(0XFF77F208),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumNunitofff7f7f7 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: Color(0XFFF7F7F7),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumffff4b9d => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFF4B9D),
        fontSize: 18.fSize,
      );
  static get titleMediumffff4b9d_1 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFF4B9D),
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleSmallBluegray90001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleSmallNunitoBlack900 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallNunitoBlack900SemiBold =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallNunitoffff4b9d =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: Color(0XFFFF4B9D),
      );
  static get titleSmallffa3a7a7 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFA3A7A7),
      );
  static get titleSmallffff4b9d => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFFF4B9D),
      );
}

extension on TextStyle {
  TextStyle get prata {
    return copyWith(
      fontFamily: 'Prata',
    );
  }

  TextStyle get lora {
    return copyWith(
      fontFamily: 'Lora',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }

  TextStyle get tenorSans {
    return copyWith(
      fontFamily: 'Tenor Sans',
    );
  }
}
