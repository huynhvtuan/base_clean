import 'package:base_clean/presentation/base/resources/color_manager.dart';
import 'package:base_clean/presentation/base/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const String font = 'Meiryo';

  static const Gradient eventScreenGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[Color(0xffF47E00), Color(0xffFCC800)],
    tileMode: TileMode.repeated,
  );

  static const Gradient defaultGradient = LinearGradient(
    begin: Alignment.topCenter,
    // end: Alignment.bottomCenter,
    colors: <Color>[AppColor.primaryDark, AppColor.primaryLight],
    // tileMode: TileMode.repeated,
  );

  static const underLineInputBorder = UnderlineInputBorder();

  static const defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(25.0),
    ),
    borderSide: BorderSide(
      color: AppColor.borderDefault,
      width: 1.0,
    ),
  );
  static const rectangleInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(4.0),
    ),
    borderSide: BorderSide(
      color: AppColor.borderDefault,
      width: 1.0,
    ),
  );

  static const InputDecoration underLineInputDecoration = InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      hintStyle: TextStyle(color: Colors.black54, fontSize: 14),
      border: underLineInputBorder,
      focusedBorder: underLineInputBorder,
      enabledBorder: underLineInputBorder,
      errorBorder: underLineInputBorder,
      disabledBorder: underLineInputBorder,
      focusedErrorBorder: underLineInputBorder);

  static const InputDecoration roundedInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(horizontal: 25),
    hintStyle: TextStyle(color: Colors.black54, fontSize: 14),
    border: defaultInputBorder,
    focusedBorder: defaultInputBorder,
    enabledBorder: defaultInputBorder,
    errorBorder: defaultInputBorder,
    disabledBorder: defaultInputBorder,
  );

  static const InputDecoration rectangleInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(horizontal: 8),
    hintStyle: TextStyle(color: Colors.black54),
    border: rectangleInputBorder,
    focusedBorder: rectangleInputBorder,
    enabledBorder: rectangleInputBorder,
    errorBorder: rectangleInputBorder,
    disabledBorder: rectangleInputBorder,
    focusedErrorBorder: rectangleInputBorder,
  );

//  text theme for light theme
  static const TextTheme _lightTextTheme = TextTheme(
    bodyText1: TextStyle(
        fontSize: FontSize.s16,
        color: AppColor.lightTextColor,
        fontFamily: font),
    bodyText2: TextStyle(
        fontSize: FontSize.s14,
        color: AppColor.lightTextColor,
        fontFamily: font),
    button: TextStyle(
        fontSize: FontSize.s15,
        color: AppColor.lightTextColor,
        fontWeight: FontWeight.w600,
        fontFamily: font),
    headline1: TextStyle(
        fontSize: FontSize.s22,
        color: AppColor.lightTextColor,
        fontWeight: FontWeight.w500,
        fontFamily: font),
    headline2: TextStyle(
        fontSize: FontSize.s20,
        color: AppColor.lightTextColor,
        fontWeight: FontWeight.w500,
        fontFamily: font),
    headline3: TextStyle(
        fontSize: FontSize.s18,
        color: AppColor.lightTextColor,
        fontWeight: FontWeight.w500,
        fontFamily: font),
    headline4: TextStyle(
        fontSize: FontSize.s16,
        color: AppColor.lightTextColor,
        fontWeight: FontWeight.w500,
        fontFamily: font),
    headline5: TextStyle(
        fontSize: FontSize.s14,
        color: AppColor.lightTextColor,
        fontWeight: FontWeight.w500,
        fontFamily: font),
    headline6: TextStyle(
        fontSize: FontSize.s12,
        color: AppColor.lightTextColor,
        fontWeight: FontWeight.w500,
        fontFamily: font),
    subtitle1: TextStyle(
        fontSize: FontSize.s16,
        color: AppColor.lightTextColor,
        fontWeight: FontWeight.w500,
        fontFamily: font),
    caption: TextStyle(
        fontSize: FontSize.s12, color: AppColor.lightBackgroundAppBarColor),
  );
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: font,
    unselectedWidgetColor: AppColor.textColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColor.textColor,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(color: AppColor.primary),
      toolbarTextStyle:
          TextStyle(fontSize: 18.0, color: AppColor.lightTextColor),
      titleTextStyle: TextStyle(
        color: AppColor.textColor,
        fontWeight: FontWeight.bold,
      ),
      // backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      prefixStyle: TextStyle(color: AppColor.darkIconColor),
      //labelStyle: TextStyle(color: nevada),
      hintStyle: TextStyle(fontSize: 14),
      border: OutlineInputBorder(
          borderSide: BorderSide(width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          )),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.borderDefault, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.borderDefault),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.borderDefault),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.borderDefault),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      fillColor: AppColor.lightInputFillColor,
      //focusColor: _darkBorderActiveColor,
    ),
    //  scaffoldBackgroundColor: Colors.white
    textTheme: _lightTextTheme,
  );

  static const TextTheme _darkTextTheme = TextTheme(
    headline1: TextStyle(fontSize: 20.0, color: AppColor.darkTextColor),
    bodyText1: TextStyle(fontSize: 16.0, color: AppColor.darkTextColor),
    bodyText2: TextStyle(fontSize: 14.0, color: AppColor.darkTextColor),
    button: TextStyle(
        fontSize: 15.0,
        color: AppColor.darkTextColor,
        fontWeight: FontWeight.w600),
    headline6: TextStyle(fontSize: 16.0, color: AppColor.darkTextColor),
    subtitle1: TextStyle(fontSize: 16.0, color: AppColor.darkTextColor),
    caption:
        TextStyle(fontSize: 12.0, color: AppColor.darkBackgroundAppBarColor),
  );

  //the dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    //prefix icon color form input on focus
    fontFamily: font,
    // scaffoldBackgroundColor: AppColor.darkBackgroundColor,
    // floatingActionButtonTheme: FloatingActionButtonThemeData(
    //   backgroundColor: AppColor.darkPrimaryColor,
    // ),
    appBarTheme: const AppBarTheme(
      color: AppColor.darkBackgroundAppBarColor,
      iconTheme: IconThemeData(color: AppColor.darkTextColor),
      titleTextStyle: TextStyle(fontSize: 16.0, color: AppColor.darkTextColor),
    ),
    snackBarTheme: const SnackBarThemeData(
        contentTextStyle: TextStyle(color: Colors.white),
        backgroundColor: AppColor.darkBackgroundAlertColor,
        actionTextColor: AppColor.darkBackgroundActionTextColor),
    iconTheme: const IconThemeData(
      color: AppColor.darkIconColor, //AppColor.darkIconColor,
    ),
    popupMenuTheme:
        const PopupMenuThemeData(color: AppColor.darkBackgroundAppBarColor),
    textTheme: _darkTextTheme,
    buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        buttonColor: Colors.red,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: AppColor.darkPrimaryColor,
    inputDecorationTheme: const InputDecorationTheme(
      prefixStyle: TextStyle(color: AppColor.darkIconColor),
      //labelStyle: TextStyle(color: nevada),
      border: OutlineInputBorder(
          borderSide: BorderSide(width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(0),
          )),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.darkBorderColor, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.darkBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(0)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.darkBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.darkBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(0)),
      ),
      fillColor: AppColor.darkInputFillColor,
      //focusColor: _darkBorderActiveColor,
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColor.darkPrimaryColor,
      // secondary: _darkSecondaryColor,
    ).copyWith(secondary: AppColor.darkPrimaryColor),
  );
}
