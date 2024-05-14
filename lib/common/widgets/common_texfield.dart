import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/color_helper.dart';
import 'common_text_style_textfild.dart';

class CommonTextFields {
  static Widget authTextField({
    TextEditingController? controller,
    String? Function(String?)? validator,
    int? maxLines,
    int? maxLength,
    TextInputType? keyboardType,
    bool? obSecure,
    Widget? prefix,
    Widget? suffix,
    String? hintText,
    TextStyle? hintStyle,
    bool? enable,
    bool? readOnly,
    void Function()? onTap,
    Function(String)? onChanged,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.w,
        top: 10.h,
        right: 15.w,
      ),
      child: TextFormField(
        onTap: onTap,
        readOnly: readOnly ?? false,
        onChanged: onChanged,
        enabled: enable ?? true,
        cursorColor: MyColors.black0,
        validator: validator,
        controller: controller,
        maxLines: maxLines ?? 1,
        obscureText: obSecure ?? false,
        obscuringCharacter: "*",
        maxLength: maxLength,
        keyboardType: keyboardType ?? TextInputType.text,
        style: CommonTextStyleTextField.kBlackBigText,
        decoration: InputDecoration(
          prefixIcon: prefix,
          suffixIcon: suffix,
          hintText: hintText,
          hintStyle: hintStyle,
          counterText: "",
          contentPadding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 12.5.w,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: MyColors.black0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: MyColors.black0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: MyColors.black0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: MyColors.black0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: MyColors.black0),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: MyColors.black0),
          ),
        ),
      ),
    );
  }
}

class CommonTextFields2 {
  static Widget authTextFieldWhite({
    TextEditingController? controller,
    FormFieldValidator? validator,
    int? maxLines,
    int? maxLength,
    TextInputType? keyboardType,
    bool? obSecure,
    Widget? prefix,
    Widget? suffix,
    String? hintText,
    TextStyle? hintStyle,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.w,
        top: 10.h,
        right: 15.w,
      ),
      child: TextFormField(
        cursorColor: MyColors.white0,
        validator: validator,
        controller: controller,
        maxLines: maxLines ?? 1,
        obscureText: obSecure ?? false,
        obscuringCharacter: "*",
        maxLength: maxLength,
        keyboardType: keyboardType ?? TextInputType.text,
        style: CommonTextStyleTextField.kBlackBigText,
        decoration: InputDecoration(
          prefixIcon: prefix,
          suffixIcon: suffix,
          hintText: hintText,
          hintStyle: hintStyle,
          counterText: "",
          contentPadding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 12.5.w,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: MyColors.white0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: MyColors.white0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: MyColors.white0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: MyColors.white0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: MyColors.white0),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: MyColors.white0),
          ),
        ),
      ),
    );
  }
}
