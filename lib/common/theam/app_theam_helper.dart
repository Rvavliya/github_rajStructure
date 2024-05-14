import 'package:flutter/material.dart';

import '../constant/color_helper.dart';

class MyThemes {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: MyColors.white0,
    dialogBackgroundColor: MyColors.white0,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(MyColors.white0),
        animationDuration: const Duration(milliseconds: 1000),
        splashFactory: InkRipple.splashFactory,
      ),
    ),
    iconTheme: IconThemeData(
      color: MyColors.black0,
      weight: 50.0,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        iconSize: 20.0,
        foregroundColor: MyColors.black0,
      ),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.grey.shade200,
      thickness: 0.8,
      indent: 5.0,
      endIndent: 5.0,
    ),
  );
  static ThemeData dark = ThemeData(brightness: Brightness.dark);
}
