
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/color_helper.dart';

Future<void> photoDialogue(BuildContext context, GestureTapCallback cameraOnTap,
    GestureTapCallback galleryOnTap) async {
  return await showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.0),
      ),
    ),
    builder: (context) {
      return Container(
        height: 185.0,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Choose an action",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.5,
                  fontFamily: "nunito",
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: cameraOnTap,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/common_img/camera.png",
                            height: 60.0,
                            width: 60.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        "Camera",
                        style: TextStyle(
                          color: MyColors.black0,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.5,
                          fontFamily: "nunito",
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: galleryOnTap,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          "assets/images/common_img/gallery.png",
                          height: 60.0,
                          width: 60.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      "Gallery",
                      style: TextStyle(
                        color: MyColors.black0,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.5,
                        fontFamily: "nunito",
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      );
    },
  );
}
