import 'package:flutter/material.dart';

class AppColor {
  AppColor();

  static const textColor = Color(0xFF707070);
  static const textColorEvenItem = Color(0XFF7B7B7B);
  static const borderColorEndDateEvenDetail = Color(0XFFEEEEEE);
  static const shadowColorEvenItem = Color(0xAEAEAE8C);
  static const primary = Color(0xFFFCC93E);
  static const primaryLight = Color(0xFFFCC93E);
  static const primaryDark = Color(0xFFF86D14);
  static const secondary = Color(0xFF7AC3F3);
  static const grey = Color(0xFF565656);
  static const greyLight = Color(0xFFDEDEDE);
  static const textGrey = Color(0xFF969595);
  static const bgEmoji = Color(0xFFF2F2F2);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const borderDefault = Color(0x1A000000);
  static const greyText = Color(0xFFCDCDCD);
  static const disableColor = Color(0XFFCDCDCD);
  static const messageColor = Color(0xFFF79F00);
  static const linkColor = Colors.blue;
  static const red = Colors.red;

  static const Color dodgerBlue = Color.fromRGBO(29, 161, 242, 1);
  static const Color whiteLilac = Color.fromRGBO(248, 250, 252, 1);
  static const Color blackPearl = Color.fromRGBO(30, 31, 43, 1);
  static const Color brinkPink = Color.fromRGBO(255, 97, 136, 1);
  static const Color juneBud = Color.fromRGBO(186, 215, 97, 1);
  static const Color nevada = Color.fromRGBO(105, 109, 119, 1);
  static const Color ebonyClay = Color.fromRGBO(40, 42, 58, 1);

  //constants color range for light theme
  //main color
  static const Color lightPrimaryColor = dodgerBlue;

  //Background Colors
  static const Color lightBackgroundColor = whiteLilac;
  static const Color lightBackgroundAppBarColor = lightPrimaryColor;
  static const Color lightBackgroundSecondaryColor = white;
  static const Color lightBackgroundAlertColor = blackPearl;
  static const Color lightBackgroundActionTextColor = white;
  static const Color lightBackgroundErrorColor = brinkPink;
  static const Color lightBackgroundSuccessColor = juneBud;

  //Text Colors
  static const Color lightTextColor = Color(0xFF292929);
  static const Color lightAlertTextColor = Colors.black;
  static const Color lightTextSecondaryColor = Colors.black;
  //Border Color
  static const Color lightBorderColor = nevada;

  //Icon Color
  static const Color lightIconColor = nevada;

  //form input colors
  static const Color lightInputFillColor = lightBackgroundSecondaryColor;
  static const Color lightBorderActiveColor = lightPrimaryColor;
  static const Color lightBorderErrorColor = brinkPink;

  //constants color range for dark theme
  static const Color darkPrimaryColor = dodgerBlue;

  //Background Colors
  static const Color darkBackgroundColor = ebonyClay;
  static const Color darkBackgroundAppBarColor = darkPrimaryColor;
  static const Color _darkBackgroundSecondaryColor =
      Color.fromRGBO(0, 0, 0, .6);
  static const Color darkBackgroundAlertColor = blackPearl;
  static const Color darkBackgroundActionTextColor = white;

  static const Color darkBackgroundErrorColor = Color.fromRGBO(255, 97, 136, 1);
  static const Color darkBackgroundSuccessColor =
      Color.fromRGBO(186, 215, 97, 1);

  //Text Colors
  static const Color darkTextColor = Colors.white;
  static const Color darkAlertTextColor = Colors.black;
  static const Color darkTextSecondaryColor = Colors.black;

  //Border Color
  static const Color darkBorderColor = nevada;

  //Icon Color
  static const Color darkIconColor = nevada;

  static const Color darkInputFillColor = _darkBackgroundSecondaryColor;
  static const Color darkBorderActiveColor = darkPrimaryColor;
  static const Color darkBorderErrorColor = brinkPink;
}
