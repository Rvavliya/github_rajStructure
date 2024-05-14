import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/color_helper.dart';

class CommonButtons {
  static Widget commonButton(
    String title,
    Function()? onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.h,
        width: 340.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: MyColors.green1,
        ),
        child: Center(
          child: Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            title,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 20.sp,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w500,
              color: MyColors.green1,
            ),
          ),
        ),
      ),
    );
  }

  static Widget commonShortButton(
    String title,
    Color color,
    Color fontColor,
    Function()? onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: 340.w / 2.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: color,
        ),
        child: Center(
          child: Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            title,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 23.sp,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w500,
              color: fontColor,
            ),
          ),
        ),
      ),
    );
  }

  static Widget smallButton(
    String title,
    Color? containerColor,
    DecorationImage image,
    Function()? onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.h,
        width: 340.w / 3.5,
        decoration: BoxDecoration(
          image: image,
          borderRadius: BorderRadius.circular(10.r),
          color: containerColor,
        ),
        child: Center(
          child: Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            title,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 25.sp,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w500,
              color: MyColors.white0,
            ),
          ),
        ),
      ),
    );
  }

  static Widget backButton({
    Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap ??
          () {
            Get.back();
          },
      child: Container(
        height: 40.h,
        width: 40.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.r),
          border: Border.all(color: MyColors.black0),
        ),
        child: Center(
          child: Icon(
            Icons.arrow_back,
            color: MyColors.black0,
            size: 25,
          ),
        ),
      ),
    );
  }
}
