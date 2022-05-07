import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final Color _lightPrimaryColor = Colors.blueGrey.shade50;
  static final Color _lightPrimaryVariantColor = Colors.blueGrey.shade800;
  static final Color _lightOnPrimaryColor = Colors.blueGrey.shade200;
  static const Color _lightTextColorPrimary = Colors.black;
  static const Color _appbarColorLight = Colors.blue;

  static final Color _darkPrimaryColor = Colors.blueGrey.shade900;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static final Color _darkOnPrimaryColor = Colors.blueGrey.shade300;
  static const Color _darkTextColorPrimary = Color.fromARGB(255, 255, 255, 255);
  static final Color _appbarColorDark = Colors.blueGrey.shade800;

  static final Color _iconColor = Colors.white;

  static const Color _accentColorDark = Color.fromRGBO(74, 217, 217, 1);

  static final TextStyle _lightHeadingText = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: "Rubic",
      fontSize: 20,
      fontWeight: FontWeight.bold);

  static final TextStyle _lightBodyText = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: "Rubic",
      fontStyle: FontStyle.italic,
      fontSize: 16,
      fontWeight: FontWeight.bold);

  static final TextTheme _lightTextTheme =
      TextTheme(headline1: _lightHeadingText, bodyText1: _lightBodyText);

  static final TextStyle _darkThemeHeadingTextStyle =
      _lightHeadingText.copyWith(color: _darkTextColorPrimary);

  static final TextStyle _darkThemeBodyTextStyle =
      _lightBodyText.copyWith(color: _darkTextColorPrimary);

  static final TextTheme _darkTextTheme = TextTheme(
      headline1: _darkThemeHeadingTextStyle,
      bodyText1: _darkThemeBodyTextStyle);

  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: _lightPrimaryColor,
      appBarTheme: AppBarTheme(
          backgroundColor: _appbarColorLight,
          iconTheme: IconThemeData(color: _iconColor)),
      bottomAppBarColor: _appbarColorLight,
      colorScheme: ColorScheme.light(
        secondary: _accentColorDark,
        primary: _lightPrimaryColor,
        onPrimary: _lightOnPrimaryColor,
        primaryContainer: _lightOnPrimaryColor, //prinaryVariant (veraltet!!!)
      ),
      textTheme: _lightTextTheme);

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: _darkPrimaryColor,
      appBarTheme: AppBarTheme(
          backgroundColor: _appbarColorDark,
          iconTheme: IconThemeData(color: _iconColor)),
      bottomAppBarColor: _appbarColorDark,
      colorScheme: ColorScheme.dark(
        secondary: _accentColorDark,
        primary: _darkPrimaryColor,
        onPrimary: _darkOnPrimaryColor,
        primaryContainer: _darkOnPrimaryColor, //prinaryVariant (veraltet!!!)
      ),
      textTheme: _darkTextTheme);
}
