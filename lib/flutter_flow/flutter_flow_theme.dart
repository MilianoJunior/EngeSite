// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF0089FF);
  late Color secondary = const Color(0xFF020896);
  late Color tertiary = const Color(0xFF55D241);
  late Color alternate = const Color(0xFF030BCE);
  late Color primaryText = const Color(0xFF000000);
  late Color secondaryText = const Color(0x80000000);
  late Color primaryBackground = const Color(0xFFF0F5F9);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFF7C82FC);
  late Color accent2 = const Color(0xFF040CCA);
  late Color accent3 = const Color(0xFF040CA4);
  late Color accent4 = const Color(0xFF3C8C4C);
  late Color success = const Color(0xFF27AE52);
  late Color warning = const Color(0xFFFFBE00);
  late Color error = const Color(0xFFFF0000);
  late Color info = const Color(0xFFFF6E31);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Work Sans';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Work Sans',
        color: const Color(0xFF0B0B0B),
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
        fontStyle: FontStyle.normal,
      );
  String get displayMediumFamily => 'Work Sans';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Work Sans',
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Work Sans';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Work Sans',
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Work Sans';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Work Sans',
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Work Sans';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Work Sans',
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineSmallFamily => 'Work Sans';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Work Sans',
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Work Sans';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Work Sans',
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Work Sans';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Work Sans',
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get titleSmallFamily => 'Work Sans';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Work Sans',
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelLargeFamily => 'Work Sans';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Work Sans',
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Work Sans';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Work Sans',
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Work Sans';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Work Sans',
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Work Sans';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Work Sans',
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Work Sans';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Work Sans',
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Work Sans';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Work Sans',
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Work Sans';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Work Sans';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Work Sans';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Work Sans';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Work Sans';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineSmallFamily => 'Work Sans';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Work Sans';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Work Sans';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Work Sans',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get titleSmallFamily => 'Work Sans';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Work Sans',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelLargeFamily => 'Work Sans';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Work Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Work Sans';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Work Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Work Sans';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Work Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Work Sans';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Work Sans';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Work Sans';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Work Sans';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Work Sans';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Work Sans';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Work Sans';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Work Sans';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineSmallFamily => 'Work Sans';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Work Sans';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Work Sans';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Work Sans',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get titleSmallFamily => 'Work Sans';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Work Sans',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelLargeFamily => 'Work Sans';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Work Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Work Sans';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Work Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Work Sans';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Work Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Work Sans';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Work Sans';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Work Sans';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Work Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF2797FF);
  late Color secondary = const Color(0xFF0B67BC);
  late Color tertiary = const Color(0xFFACC420);
  late Color alternate = const Color(0xFF2B3743);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF919BAB);
  late Color primaryBackground = const Color(0xFF161C24);
  late Color secondaryBackground = const Color(0xFF212B36);
  late Color accent1 = const Color(0x4C2797FF);
  late Color accent2 = const Color(0x4C0B67BC);
  late Color accent3 = const Color(0x4DACC420);
  late Color accent4 = const Color(0xB3161C24);
  late Color success = const Color(0xFF27AE52);
  late Color warning = const Color(0xFFFC964D);
  late Color error = const Color(0xFFEE4444);
  late Color info = const Color(0xFFFFFFFF);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
