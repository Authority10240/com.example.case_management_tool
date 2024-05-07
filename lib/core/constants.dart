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
      useMaterial3: true,
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
static Color primary = FlavorConfig.instance.variables["primary_color"]?? Colors.lightBlue;
static Color primaryOpt = FlavorConfig.instance.variables["primary_opt-color"]?? Colors.lightBlueAccent;
static Color secondary = FlavorConfig.instance.variables["secondary_color"]?? Colors.lightGreen;
static Color secondaryOpt = FlavorConfig.instance.variables["secondary_opt-color"]?? Colors.lightGreenAccent;
}