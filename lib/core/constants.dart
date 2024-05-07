import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class AppSupportedLocals{
  static const appSupportedLocals =  [
    Locale('en')
  ];
}

class AppThemeData {
  static ThemeData appThemeData = ThemeData(
      primaryColor: AppColorScheme.primary,
      fontFamily: 'Roboto',
      progressIndicatorTheme: ProgressIndicatorThemeData(
          circularTrackColor: AppColorScheme.primary,
          color: AppColorScheme.secondary
      )


  );
}

class AppColorScheme{
static Color white = Colors.white;
static Color black = Colors.black;
static Color transparent = Colors.transparent;
static Color primary = FlavorConfig.instance.variables["primary_color"];
static Color primaryOpt = FlavorConfig.instance.variables["primary_opt-color"];
static Color secondary = FlavorConfig.instance.variables["secondary_color"];
static Color secondaryOpt = FlavorConfig.instance.variables["secondary_opt-color"];
}