import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/color_helper.dart';

extension CommonTextStyle on String {
  Widget avenirRegularTextStyle({
    Color? fontColor,
    double? fontSize,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    TextAlign? textAlign,
    int? maxLine,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLine,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: fontSize ?? 25.sp,
        fontFamily: "Avenir",
        fontWeight: FontWeight.normal,
        color: fontColor ?? MyColors.black0,
      ),
    );
  }

  Widget avenirBoldTextStyle({
    Color? fontColor,
    double? fontSize,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    TextAlign? textAlign,
    int? maxLine,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLine,
      style: TextStyle(
        decoration: textDecoration ?? TextDecoration.none,
        fontSize: fontSize ?? 25.sp,
        fontFamily: "Avenir",
        fontWeight: FontWeight.bold,
        color: fontColor ?? MyColors.black0,
      ),
    );
  }

  Widget kanitTextStyle({
    Color? fontColor,
    double? fontSize,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    TextAlign? textAlign,
    int? maxLine,
  }) {
    return Text(
      this,
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLine,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: fontSize ?? 25.sp,
        fontFamily: "Kanit",
        fontWeight: FontWeight.w500,
        color: fontColor ?? MyColors.black0,
      ),
    );
  }
}
