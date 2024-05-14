import 'package:flutter/material.dart';

import '../constant/color_helper.dart';

SnackBar snackBar(String text) {
  return SnackBar(
    content: Center(
      child: Text(
        text,
        style: TextStyle(
          color: MyColors.red0,
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
          fontFamily: "nunito",
        ),
      ),
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    duration: const Duration(milliseconds: 1500),
    backgroundColor: MyColors.white0,
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 13.0),
    margin: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 30.0),
    elevation: 5.0,
    behavior: SnackBarBehavior.floating,
    dismissDirection: DismissDirection.horizontal,
  );
}
