import 'package:flutter/material.dart';
import 'package:skreen/constants/app_border_radius.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:skreen/constants/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        fontFamily: "Kanit",
        // textTheme: GoogleFonts.kanitTextTheme(),
        useMaterial3: true,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.instance.primary(context),
          selectionColor: AppColors.instance.primary(context),
          selectionHandleColor: AppColors.instance.primary(context),
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColors.instance.primary(context),
        ),
        scaffoldBackgroundColor: AppColors.instance.lightMode,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.instance.lightMode,
          surfaceTintColor: AppColors.instance.lightMode,
          foregroundColor: AppColors.instance.lightMode,
        ),
        checkboxTheme: CheckboxThemeData(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          fillColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.instance.green(context);
              }
              return AppColors.instance.greyTurquoise(context);
            },
          ),
          side: BorderSide(
            width: 1,
            color: AppColors.instance.greyTurquoise(context),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppBorderRadius.checkBox,
            ),
          ),
        ),
        tabBarTheme: TabBarTheme(
          labelPadding: EdgeInsets.zero,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            color: AppColors.instance.skyBlue(context),
            borderRadius: BorderRadius.circular(
              AppBorderRadius.tabbar,
            ),
          ),
          overlayColor: WidgetStatePropertyAll(AppColors.instance.lightMode),
          dividerColor: AppColors.instance.lightMode,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        fontFamily: "Kanit",
        // textTheme: GoogleFonts.kanitTextTheme(),
        useMaterial3: true,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.instance.primary(context),
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColors.instance.primary(context),
        ),
        scaffoldBackgroundColor: AppColors.instance.darkMode,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.instance.darkMode,
          surfaceTintColor: AppColors.instance.darkMode,
          foregroundColor: AppColors.instance.darkMode,
        ),
        checkboxTheme: CheckboxThemeData(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          fillColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.instance.green(context);
              }
              return AppColors.instance.greyTurquoise(context);
            },
          ),
          side: BorderSide(
            width: 1,
            color: AppColors.instance.greyTurquoise(context),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppBorderRadius.checkBox,
            ),
          ),
        ),
        tabBarTheme: TabBarTheme(
          labelPadding: EdgeInsets.zero,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            color: AppColors.instance.skyBlue(context),
            borderRadius: BorderRadius.circular(
              AppBorderRadius.tabbar,
            ),
          ),
          overlayColor: WidgetStatePropertyAll(AppColors.instance.darkMode),
          dividerColor: AppColors.instance.darkMode,
        ),
      );
}
