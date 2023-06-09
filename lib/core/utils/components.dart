import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:touchline/core/utils/assets_manager.dart';
import 'package:touchline/core/utils/helper.dart';

import 'app_values.dart';

class Components {
  static Widget appLogo({
    required double height,
  }) {
    return Container(
      clipBehavior: Clip.antiAlias,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(AppSize.s25),
          bottomRight: Radius.circular(AppSize.s25),
        ),
      ),
      child: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,
        background: Image.asset(
          height: height,
          width: Helper.maxWidth,
          fit: BoxFit.cover,
          AssetsManager.homeScreenLogo,
        ),
      ),
    );
  }

  static void showToast({
    required String msg,
    required fontSize,
    Color color = Colors.white,
    Color textColor = Colors.black,
  }) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: color,
        textColor: textColor,
        fontSize: fontSize);
  }

  static String getOS() {
    return Platform.operatingSystem;
  }

  static showSnackBar({
    required String title,
    required String message,
    required Color backgroundColor,
    int durationWithMilliSeconds = 2000,
    required Color textColor,
  }) {
    Get.snackbar(title, message,
        margin: EdgeInsets.symmetric(
            vertical: AppSize.s30, horizontal: AppSize.s10),
        backgroundColor: backgroundColor,
        colorText: textColor,
        animationDuration: const Duration(
          milliseconds: 500,
        ),
        duration: Duration(milliseconds: durationWithMilliSeconds));
  }

  static navigateAndFinish({required context, required widget}) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => widget), (route) => false);
  }

  static navigateTo(context, widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

// static slideNavigateTo(context, page) {
//   Navigator.of(context).push(SlideAnimationNav(page: page, context: context));
// }
//
// static scaleNavigateTo(context, page) {
//   Navigator.of(context).push(ScaleAnimationNav(page: page, context: context));
// }
//
// static rotationNavigateTo(context, page) {
//   Navigator.of(context)
//       .push(RotationAnimationNav(page: page, context: context));
// }
//
// static sizeNavigateTo(context, page) {
//   Navigator.of(context).push(SizeAnimationNav(page: page, context: context));
// }
//
// static opacityNavigateTo(context, page) {
//   Navigator.of(context)
//       .push(OpacityAnimationNav(page: page, context: context));
// }
}
