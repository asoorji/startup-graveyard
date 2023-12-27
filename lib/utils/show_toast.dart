import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../config/colors.dart';

class ShowToast {
  static void showNormalToast({
    required String text,
    Color? color,
    EasyLoadingToastPosition toastPosition = EasyLoadingToastPosition.bottom,
  }) {
    EasyLoading.dismiss();
    EasyLoading.instance
      ..toastPosition = toastPosition
      ..displayDuration = const Duration(seconds: 2)
      ..loadingStyle = EasyLoadingStyle.custom
      ..radius = 30.0
      ..progressColor = color ?? AppColors.primaryColor
      ..backgroundColor = color ?? AppColors.primaryColor
      ..indicatorColor = color ?? AppColors.primaryColor
      ..textColor = Colors.white
      ..userInteractions = true
      ..maskType = EasyLoadingMaskType.none
      ..dismissOnTap = false;

    EasyLoading.showToast(
      text,
      toastPosition: toastPosition,
    );
  }

  static void showErrorText({
    required String text,
    Color? color,
    EasyLoadingToastPosition toastPosition = EasyLoadingToastPosition.bottom,
  }) {
    EasyLoading.dismiss();
    EasyLoading.instance
      ..toastPosition = toastPosition
      ..displayDuration = const Duration(seconds: 2)
      ..loadingStyle = EasyLoadingStyle.custom
      ..radius = 30.0
      ..progressColor = color ?? const Color(0xffFB4E4E)
      ..backgroundColor = color ?? const Color(0xffFB4E4E)
      ..indicatorColor = color ?? const Color(0xffFB4E4E)
      ..textColor = Colors.white
      ..userInteractions = true
      ..maskType = EasyLoadingMaskType.none
      ..dismissOnTap = false;

    EasyLoading.showToast(
      text,
      toastPosition: toastPosition,
    );
  }
}
