import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secure_fintech_bankingapp/core/theme/app_pallete.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
    borderSide: BorderSide(color: color, width: 3),
    borderRadius: BorderRadius.circular(10),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    // inputDecorationTheme: InputDecorationTheme(
    //   contentPadding: EdgeInsets.all(30),
    // )
    scaffoldBackgroundColor: AppPallete.backgroundColor,

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(27),
      focusedBorder: _border(AppPallete.gradient2),
      enabledBorder: _border(),
    ),

    chipTheme: ChipThemeData(
      color: WidgetStatePropertyAll(AppPallete.backgroundColor),
      side: BorderSide.none,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppPallete.backgroundColor,
      elevation: 8,
      type: BottomNavigationBarType.fixed,

      selectedItemColor: AppPallete.gradient2,
      unselectedItemColor: AppPallete.greyColor.withOpacity(0.6),

      selectedIconTheme: IconThemeData(size: 26, color: AppPallete.gradient2),

      unselectedIconTheme: IconThemeData(
        size: 22,
        color: AppPallete.greyColor.withOpacity(0.6),
      ),

      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),

      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 11,
      ),
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: AppPallete.backgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(color: AppPallete.whiteColor),
      titleTextStyle: TextStyle(
        color: AppPallete.whiteColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
