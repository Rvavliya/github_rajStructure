import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'color_helper.dart';

class ImageRes {
  static const String horizontalActiveIcon = "assets/images/HorizontalIcon.svg";
  static const String verticalActiveIcon = "assets/images/VerticalIcon.svg";
  static const String verticalInactive = "VerticalInactive.svg";
  static const String horizontalInactive =
      "assets/images/HorizontalInactive.svg";
}

Future<void> easyLoading(BuildContext context) async {
  return await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return Center(
        child: Container(
          height: 65.0,
          width: 65.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.all(17.0),
          child: CircularProgressIndicator(
            color: MyColors.green3,
            strokeWidth: 2.2,
          ),
        ),
      );
    },
  );
}
