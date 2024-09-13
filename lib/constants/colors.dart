import 'package:flutter/material.dart';

class TColors {
  TColors._();
  //basic color
  static const Color primary = Color(0xFFF5968D);
  static const Color secondary = Color(0xFF6B5B95);
  static const Color accent = Color(0xFF88B04B);
  static const Color background = Color(0xFFF7CAC9);
  static const Color text = Color(0xFF034F84);
  static const Color highlight = Color(0xFFF4D03F);
  static const Color primaryDark = Color(0xFFBF5B5B);
  static const Color secondaryDark = Color(0xFF4A3D6A);
  static const Color accentDark = Color(0xFF4A6B3D);
  static const Color backgroundDark = Color(0xFF2E2E2E);
  static const Color textDark = Color(0xFFE0E0E0);
  static const Color highlightDark = Color(0xFFBFC72D);

  //textColors
  static const Color textprimary = Color(0xFF333333);
  static const Color textsecodary = Color(0xFF6C7570);
  static const Color textWhite = Colors.white;
  //backgroundColors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBg = Color(0xFFF3F5FF);
  //bg Containers
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContaner = TColors.white.withOpacity(.1);

  //Btn Colors
  static const Color btnPrimary = Color(0xFF4b68ff);
  static const Color btnSecondary = Color(0xFF6C757D);
  static const Color btnDisabled = Color(0xFFC4C4C4);

  //border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  //Errore && valid
  static const Color error = Color(0xFFD32F2F);
  static const Color sucess = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  //neutral
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
