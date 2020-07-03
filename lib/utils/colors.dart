import 'package:flutter/material.dart';

class AtColors {
  AtColors._();

  Color hexToColor(String hex) => Color(int.parse(hex.substring(1, 7), radix: 16) + 0xFF000000);

  // Afrotrends Colors
  static const _primaryPrivate = 0xffFFFFFF;
  static const _secondaryPrivate = 0xff333333;
  static const _secondary2Private = 0xff5150D8;
  static const _accentPrivate = 0xffDE2A4A;
  static const _accent2Private = 0xffF0E70E;

  static const MaterialColor primaryColor = const MaterialColor(
    _primaryPrivate,
    const <int, Color>{
      50: const Color(0xFFFFFFFF),
      100: const Color(0xFFFFFFFF),
      200: const Color(0xFFFFFFFF),
      300: const Color(0xFFFFFFFF),
      400: const Color(0xFFFFFFFF),
      500: const Color(_primaryPrivate),
      600: const Color(0xFFe6e6e6),
      700: const Color(0xFFcccccc),
      800: const Color(0xFFb3b3b3),
      900: const Color(0xFF999999),
    },
  );

  static const MaterialColor secondaryColor = const MaterialColor(
    _secondaryPrivate,
    const <int, Color>{
      50: const Color(0xFF737373),
      100: const Color(0xFF666666),
      200: const Color(0xFF595959),
      300: const Color(0xFF4d4d4d),
      400: const Color(0xFF404040),
      500: const Color(_secondaryPrivate),
      600: const Color(0xFF262626),
      700: const Color(0xFF1a1a1a),
      800: const Color(0xFF0d0d0d),
      900: const Color(0xFF000000),
    },
  );

  static const MaterialColor secondary2Color = const MaterialColor(
    _secondary2Private,
    const <int, Color>{
      50: const Color(0xFFababed),
      100: const Color(0xFF9696e8),
      200: const Color(0xFF8282e3),
      300: const Color(0xFF6d6ddf),
      400: const Color(0xFF5858da),
      500: const Color(_secondary2Private),
      600: const Color(0xFF4343d6),
      700: const Color(0xFF2e2ed1),
      800: const Color(0xFF2929bc),
      900: const Color(0xFF2525a7),
    },
  );

  static const MaterialColor accentColor = const MaterialColor(
    _accentPrivate,
    const <int, Color>{
      50: const Color(0xFFfeb19a),
      100: const Color(0xFFfe9e80),
      200: const Color(0xFFfe8a67),
      300: const Color(0xFFfe774d),
      400: const Color(0xFFfe6334),
      500: const Color(_accentPrivate),
      600: const Color(0xFFfe501b),
      700: const Color(0xFFfe3c01),
      800: const Color(0xFFe43601),
      900: const Color(0xFFcb3001),
    },
  );

  static const MaterialColor accent2Color = const MaterialColor(
    _accent2Private,
    const <int, Color>{
      50: const Color(0xFFf8f487),
      100: const Color(0xFFf7f26e),
      200: const Color(0xFFf5f056),
      300: const Color(0xFFf4ee3e),
      400: const Color(0xFFf2ec26),
      500: const Color(_accent2Private),
      600: const Color(0xFFd9d20d),
      700: const Color(0xFFc1bb0b),
      800: const Color(0xFFa9a30a),
      900: const Color(0xFF918c08),
    },
  );

  static const Color permissionGreen1 = Color(0xFF138750);
  static const Color permissionGreen2 = Color(0xFF177649);

  static const Color permissionGrey1 = Color(0xFFB9BABB);
  static const Color permissionGrey2 = Color(0xFF979797);
  static const Color welcomeGrey = Color(0xFF637381);

  static const Color background = Color(0xFFf8f8f8);

  static const Color lightRed = Color(0xFFFBEAE5);

  static const Color yellow = Color(0xFFECAE12);
  static const Color fbButton = Color(0xFF425bb4);
  static const Color googleButton = Color(0xFF34bbf0);
  static const Color loginButton = Color(0xFF3871b6);

  static const Color green = Color(0xFF00C853);
  static const Color buttonGrey = Color(0xFFBDBDBD);

  static const Color transparent = Colors.transparent;

  static const Color navbarGrey = Color(0xFF4F4F4F);

  static const Color assessmentBlue = Color(0XFF0070E0);
  static const Color optionBlue = Color(0XFF007BF4);

  static const Color infectedBg = Color(0XFFFBEAE5);
  static const Color iconGrey = Color(0XFF455A64);
}
