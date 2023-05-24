import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvc_cli_pattern/app/core/BoxDecoration.dart';
import 'package:sizer/sizer.dart';

import '../config/app_colors.dart';
import '../util/util.dart';

Widget mainBoxContainer({required Widget child}) {
  return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(gradient: AppColors.backGroundGradient),
      child: Align(
        child: Container(
          height: 82.h,
          width: 89.w,
          decoration: BoxDecoration(
              color: AppColors.kWhite2.withOpacity(0.85),
              borderRadius: BorderRadius.circular(20)),
          child: child,
        ),
      ));
}

Widget mainScanBox(Widget? pic) {
  return Container(
    height: 22.246.h,
    width: 100.w,
    decoration: MyBoxDecoration.mainBoxDecoration(),
    child: pic,
  );
}

Widget scanBox(Widget? scanImage) {
  return Container(
    height: 190,
    width: 190,
    decoration: MyBoxDecoration.textFieldBoxDecoration("null"),
    child: scanImage,
  );
}

Widget mainHomeBox({required Widget child}) {
  return Container(
    height: 40.h,
    width: 100.w,
    decoration: MyBoxDecoration.mainHomeBoxDecoration(),
    child: child,
  );
}

Widget withdrawBox({required Widget child}) {
  return Container(
    height: 22.h,
    width: 100.w,
    decoration: MyBoxDecoration.mainHomeBoxDecoration(),
    child: child,
  );
}
