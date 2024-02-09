 import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer.withOpacity(1),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.greenA400,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray30001,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray700.withOpacity(0.9),
          fontSize: 16.fSize,
          fontFamily: 'Lora',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 13.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray700,
          fontSize: 12.fSize,
          fontFamily: 'Lora',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 40.fSize,
          fontFamily: 'Prata',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 32.fSize,
          fontFamily: 'Lora',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 24.fSize,
          fontFamily: 'Lora',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray90001,
          fontSize: 13.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 10.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Lora',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: appTheme.pink300,
          fontSize: 16.fSize,
          fontFamily: 'Lora',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray700,
          fontSize: 14.fSize,
          fontFamily: 'Lora',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF77F208),
    primaryContainer: Color(0XFF253B80),
    secondaryContainer: Color(0XFFCDCFD0),

    // Error colors
    errorContainer: Color(0XFF4A8A62),
    onError: Color(0XFFB8BFBF),
    onErrorContainer: Color(0X0C111111),

    // On colors(text colors)
    onPrimary: Color(0XFF202120),
    onPrimaryContainer: Color(0X71FFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF090A0A);
  Color get black90001 => Color(0XFF000000);

  // Blue
  Color get blueA400 => Color(0XFF1877F2);

  // BlueGray
  Color get blueGray100 => Color(0XFFD1D1D1);
  Color get blueGray400 => Color(0XFF888C8C);
  Color get blueGray900 => Color(0XFF333333);
  Color get blueGray90001 => Color(0XFF333737);

  // DeepOrange
  Color get deepOrange200 => Color(0XFFE8BF95);

  // DeepPurple
  Color get deepPurpleA200 => Color(0XFF9747FF);
  Color get deepPurpleA400 => Color(0XFF5537EE);

  // Gray
  Color get gray100 => Color(0XFFF7F7F7);
  Color get gray200 => Color(0XFFEFEFF0);
  Color get gray300 => Color(0XFFE1E1D9);
  Color get gray30001 => Color(0XFFDFE4E4);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray50 => Color(0XFFF8F8F8);
  Color get gray500 => Color(0XFF979C9E);
  Color get gray50001 => Color(0XFFA3A7A7);
  Color get gray50002 => Color(0XFF97A191);
  Color get gray5001 => Color(0XFFFCFCFC);
  Color get gray700 => Color(0XFF616464);
  Color get gray900 => Color(0XFF171717);
  Color get gray90000 => Color(0X00202020);

  // Graya
  Color get gray9000a => Color(0X0A141414);

  // Green
  Color get greenA400 => Color(0XFF00C883);

  // LightGreenf
  Color get lightGreen1007f => Color(0X7FE4F7D2);

  // LightGreen
  Color get lightGreenA200 => Color(0XFF95FF36);

  // LightGreenAE
  Color get lightGreenA200E5 => Color(0XE595FD37);

  // Orange
  Color get orange400 => Color(0XFFFFB323);
  Color get orange50 => Color(0XFFFFEED6);

  // Pink
  Color get pink300 => Color(0XFFFF4B9D);

  // Red
  Color get red500 => Color(0XFFEA4335);
  Color get redA700 => Color(0XFFED0006);

  // Teal
  Color get teal50 => Color(0XFFD9E3EF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
