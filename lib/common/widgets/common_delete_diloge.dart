import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/color_helper.dart';

Future<void> deleteDialog(BuildContext context, VoidCallback? onPressed) async {
  return await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        backgroundColor: MyColors.white0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        title: Text(
          "Delete property?",
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
            color: MyColors.black0,
            fontFamily: "nunito",
          ),
        ),
        content: const Text(
          "This property will be permanently deleted from your property list.",
          style: TextStyle(
            fontSize: 13.0,
            color: Colors.black54,
            fontFamily: "nunito",
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text(
              "Cancel",
              style: TextStyle(
                color: MyColors.green3,
                fontFamily: "nunito",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "Delete",
              style: TextStyle(
                color: MyColors.green0,
                fontFamily: "nunito",
              ),
            ),
          ),
        ],
      );
    },
  );
}
