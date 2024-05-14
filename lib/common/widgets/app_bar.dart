import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AppBarr extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final Widget? flexibleSpace;
  final Widget? title;
  final Color? color;
  final bool? centerTitle;
  final double? toolbarHeight;
  final double? titleSpacing;
  const AppBarr({
    super.key,
    this.actions,
    this.color,
    this.title,
    this.centerTitle,
    this.toolbarHeight,
    this.flexibleSpace,
    this.titleSpacing,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return AppBar(
      toolbarHeight: toolbarHeight ?? 30,
      scrolledUnderElevation: 0.1,
      automaticallyImplyLeading: false,
      leadingWidth: width * 0.18,
      backgroundColor: color ?? Colors.white54,
      centerTitle: centerTitle ?? true,
      titleSpacing: titleSpacing ?? 5,
      title: title,
      leading: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: CircleAvatar(
            maxRadius: height * 0.25,
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 20,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.9),
            ),
          ),
        ),
      ),
      actions: actions,
      flexibleSpace: flexibleSpace,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}