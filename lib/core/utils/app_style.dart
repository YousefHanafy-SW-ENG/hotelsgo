import 'package:flutter/material.dart';
import 'app-color.dart';
import 'app_fonts.dart';

TextStyle getBoldTextStyle({
  double? fontSize = 16,
  Color? color,
  String? fontFamily = FontFamilies.interFamily,
  double? letterSpacing,
  FontStyle? fontStyle,
  double? wordSpacing,
  TextDecoration? decoration,
  TextDecorationStyle? textDecorationStyle,
  TextBaseline? textBaseline,
  Color? decorationColor,
  Color? backgroundColor,
  double? height,
}) {
  return
    TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeights.bold,
    fontFamily: fontFamily,
    letterSpacing: letterSpacing,
    fontStyle: fontStyle,
    decoration: decoration,
    decorationStyle: textDecorationStyle,
    decorationColor: decorationColor,
    wordSpacing: wordSpacing,
    textBaseline: textBaseline,
    backgroundColor: backgroundColor,
    height: height,
  )
  ;
}

// Primary Text Style
TextStyle getRegularTextStyle({
  double? fontSize=15,
  Color? color,
  FontWeight? fontWeight,
  String? fontFamily=FontFamilies.interFamily,
  double? letterSpacing,
  FontStyle? fontStyle,
  double? wordSpacing,
  TextDecoration? decoration,
  TextDecorationStyle? textDecorationStyle,
  TextBaseline? textBaseline,
  Color? decorationColor,
  Color? backgroundColor,
  double? height,
}) {
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight ?? FontWeight.w400,
    fontFamily: fontFamily,
    letterSpacing: letterSpacing,
    fontStyle: fontStyle,
    decoration: decoration,
    decorationStyle: textDecorationStyle,
    decorationColor: decorationColor,
    wordSpacing: wordSpacing,
    textBaseline: textBaseline,
    backgroundColor: backgroundColor,
    height: height,
  );
}

// Secondary Text Style
TextStyle getSemiBoldTextStyle({
  double? fontSize,
  Color? color,
  FontWeight? fontWeight,
  String? fontFamily = FontFamilies.interFamily,
  double? letterSpacing,
  FontStyle? fontStyle,
  double? wordSpacing,
  TextDecoration? decoration,
  TextDecorationStyle? textDecorationStyle,
  TextBaseline? textBaseline,
  Color? decorationColor,
  Color? backgroundColor,
  double? height,
}) {
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeights.semiBold,
    fontFamily: fontFamily,
    letterSpacing: letterSpacing,
    fontStyle: fontStyle,
    decoration: decoration,
    decorationStyle: textDecorationStyle,
    decorationColor: decorationColor,
    wordSpacing: wordSpacing,
    textBaseline: textBaseline,
    backgroundColor: backgroundColor,
    height: height,
  );
}
// ButtonStyle get defaultElevatedButtonStyle => ElevatedButton.styleFrom(
//   backgroundColor: AppColors.primaryColor,
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(
//       10,
//     ),
//   ),
// );
ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
  backgroundColor: AppColors.transparent,
  side: const BorderSide(
    color: Colors.white,
    width: 1,
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(
      10,
    ),
  ),
);
