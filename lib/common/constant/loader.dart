import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../constant/color_helper.dart';

const defaultValue = 56.0;

class Loader extends StatelessWidget {
  static OverlayEntry? _currentLoader;

  const Loader._();

  static OverlayState? _overlayState;

  /// If you need to check your loader is being shown or
  /// not just call the property ```Loader.isShown'''
  static bool get isShown => _currentLoader != null;

  /// If you need to show an normal overlayloader,
  /// just call ```Loader.show(context)``` with a build context.
  /// BuildContext is a required param.

  static void show(
    BuildContext context, {
    /// Define Overlay color [optional]
    Color? overlayColor,

    /// overlayTop mean overlay start from Top margin.
    ///
    /// If you have custom appbar and you want to show loader without custom
    /// appbar then will be custom appbar height here and also you have to make
    /// sure [isAppbarOverlay = false].
    double? overlayFromTop,

    /// overlayFromBottom mean overlay end to Bottom margin.
    ///
    /// If you have custom BottomAppBar and you want to show loader without
    /// custom BottomAppBar then will be custom BottomAppBar height here and
    /// also you have to make sure [isBottomBarOverlay = false].
    double? overlayFromBottom,

    /// isAppbarOverlay default true.
    ///
    /// If you need to appbar outside from overlay loader then make it false.
    bool isAppbarOverlay = true,

    /// isBottomBarOverlay default true.
    ///
    /// If you need to BottomBar outside from overlay loader then make it false.
    bool isBottomBarOverlay = true,

    /// isSafeAreaOverlay default true.
    ///
    /// If you don't want to overlay  your safe area like statusBar and
    /// bottomNavBar then make it false.
    bool isSafeAreaOverlay = true,
  }) {
    var safeBottomPadding = MediaQuery.of(context).padding.bottom;
    var defaultPaddingTop = 0.0;
    var defaultPaddingBottom = 0.0;
    if (!isAppbarOverlay) {
      isSafeAreaOverlay = false;
    }
    if (!isSafeAreaOverlay) {
      defaultPaddingTop = defaultValue;
      defaultPaddingBottom = defaultValue + safeBottomPadding;
    } else {
      defaultPaddingTop = defaultValue;
      defaultPaddingBottom = defaultValue;
    }

    _overlayState = Overlay.of(context);
    if (_currentLoader == null) {
      ///Create current Loader Entry
      _currentLoader = OverlayEntry(builder: (context) {
        return Stack(
          children: <Widget>[
            _overlayWidget(
                isSafeAreaOverlay,
                overlayColor ?? const Color(0x99000000),
                isAppbarOverlay ? 0.0 : overlayFromTop ?? defaultPaddingTop,
                isBottomBarOverlay
                    ? 0.0
                    : overlayFromBottom ?? defaultPaddingBottom),
            Center(
              child: LoadingAnimationWidget.hexagonDots(
                  color: MyColors.green1, size: 50.h),
            ),
          ],
        );
      });

      try {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (_currentLoader != null) {
            _overlayState?.insert(_currentLoader!);
          }
        });
      } catch (e) {
        debugPrint(e.toString());
      }
    }
  }

  static Widget _overlayWidget(bool isSafeArea, Color overlayColor,
      double overlayFromTop, double overlayFromBottom) {
    return isSafeArea
        ? Container(
            color: overlayColor,
            margin:
                EdgeInsets.only(top: overlayFromTop, bottom: overlayFromBottom),
          )
        : SafeArea(
            child: Container(
            color: overlayColor,
            margin:
                EdgeInsets.only(top: overlayFromTop, bottom: overlayFromBottom),
          ));
  }

  /// You have to call ```Loader.hide()``` method inside the [dispose()] to clear loader.
  ///
  ///  The overlay or hide your loader when your view is disposed otherwise
  ///  [throws] an exception.
  /// And also you have to call ```Loader.hide()``` method when you need to hide
  /// your overlay loader.
  ///
  /// For example,
  /// After finishing your api call you need to hide your loader.
  /// then just call ```Loader.hide()```
  static void hide() {
    if (_currentLoader != null) {
      try {
        _currentLoader?.remove();
      } catch (e) {
        debugPrint(e.toString());
      } finally {
        _currentLoader = null;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (value) async {
        debugPrint("called will pop <><><");
        false;
      },
      child: Center(
        child: LoadingAnimationWidget.hexagonDots(
            color: MyColors.green1, size: 50.h),
      ),
    );
  }
}
