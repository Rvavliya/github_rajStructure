import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/color_helper.dart';

snackbar(String title, String message) {
  Get.snackbar(
    "",
    "",
    titleText: Text(
      title,
      style: TextStyle(
        fontFamily: "nunito",
        color: MyColors.red0,
        fontSize: 15.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    messageText: Text(
      message,
      style: TextStyle(
        fontFamily: "nunito",
        color: MyColors.red0,
        fontSize: 13.0,
        // fontWeight: FontWeight.bold,
      ),
    ),
    snackPosition: SnackPosition.TOP,
    padding: const EdgeInsets.all(10.0),
    margin: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
    backgroundColor: Colors.grey.shade300,
  );
}
