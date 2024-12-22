
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/core/text_styles.dart';


class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool multiText;
  final TextAlign? textAlign;
  final TextOverflow overflow;
  final Color? color;
  final bool centered;
  final int? maxLines;
  final double? fontSize;
  final double? letterSpacing;
  final double? wordSpacing;
  final double? height;
  final TextDecoration? decoration;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final String? fontfamily;
  AppText.headlineLarge(
      this.text, {
        super.key,
        this.multiText = true,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines,
        this.textAlign,
        this.wordSpacing,
        this.height,
        this.letterSpacing,
        this.fontSize,
        this.fontWeight,
        this.fontStyle,
        this.fontfamily,
        this.decoration,
      }) : style = headingLarge.copyWith(
    color: color,
    fontSize: fontSize ?? 24.sp,
    decoration: decoration,
    height: height,
    letterSpacing: letterSpacing,
    fontFamily: fontfamily,
    wordSpacing: wordSpacing,
    fontWeight: fontWeight,
  );
  AppText.headlineMedium(
      this.text, {
        super.key,
        this.multiText = true,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines,
        this.textAlign,
        this.wordSpacing,
        this.height,
        this.letterSpacing,
        this.fontSize,
        this.fontWeight,
        this.fontStyle,
        this.fontfamily,
        this.decoration,
      }) : style = headingMedium.copyWith(
    color: color,
    fontSize: fontSize ?? 20.sp,
    height: height,
    decoration: decoration,
    letterSpacing: letterSpacing,
    fontFamily: fontfamily,
    wordSpacing: wordSpacing,
    fontWeight: fontWeight,

  );
  AppText.headlineSmall(
      this.text, {
        super.key,
        this.multiText = true,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines,
        this.textAlign,
        this.wordSpacing,
        this.height,
        this.letterSpacing,
        this.fontSize,
        this.fontWeight,
        this.fontStyle,
        this.fontfamily,
        this.decoration,
      }) : style = headingSmall.copyWith(
    color: color,
    fontSize: fontSize ?? 12.sp,
    decoration: decoration,
    height: height,
    letterSpacing: letterSpacing,
    fontFamily: fontfamily,
    wordSpacing: wordSpacing,
    fontWeight: fontWeight,
  );

  AppText.bodySmall(
      this.text, {
        super.key,
        this.multiText = true,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines,
        this.textAlign,
        this.wordSpacing,
        this.height,
        this.letterSpacing,
        this.fontSize,
        this.fontWeight,
        this.fontStyle,
        this.fontfamily,
        this.decoration,
      }) : style = bodySmall.copyWith(
    color: color,
    fontSize: fontSize ?? 12.sp,
    height: height,
    decoration: decoration,
    letterSpacing: letterSpacing,
    fontFamily: fontfamily,
    wordSpacing: wordSpacing,
    fontWeight: fontWeight,
    fontStyle: fontStyle
  );
  AppText.bodyMedium(
      this.text, {
        super.key,
        this.multiText = true,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines,
        this.textAlign,
        this.wordSpacing,
        this.height,
        this.letterSpacing,
        this.fontSize,
        this.fontWeight,
        this.fontStyle,
        this.fontfamily,
        this.decoration,
      }) : style = bodyMedium.copyWith(
    color: color,
    fontSize: fontSize ?? 14.sp,
    height: height,
    letterSpacing: letterSpacing,
    decoration: decoration,
    fontFamily: fontfamily,
    wordSpacing: wordSpacing,
    fontWeight: fontWeight,
  );


  AppText.displaySmall(
      this.text, {
        super.key,
        this.multiText = true,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines,
        this.textAlign,
        this.wordSpacing,
        this.height,
        this.letterSpacing,
        this.fontSize,
        this.fontWeight,
        this.fontStyle,
        this.fontfamily,
        this.decoration,
      }) : style = displaySmall.copyWith(
    color: color,
    fontSize: fontSize ?? 16.sp,
    height: height,
    letterSpacing: letterSpacing,
    decoration: decoration,
    fontFamily: fontfamily,
    wordSpacing: wordSpacing,
    fontWeight: fontWeight,
  );
  //const AppText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: multiText || maxLines != null ? maxLines ?? 9999999999 : 1,
      overflow: overflow,
      textAlign: centered ? TextAlign.center : textAlign ?? TextAlign.left,
      style: style,
    );
  }
}
