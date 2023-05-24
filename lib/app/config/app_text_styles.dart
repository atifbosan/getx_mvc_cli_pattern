import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


import 'app_colors.dart';

/// AppTextStyle format as follows:
/// [fontWeight][fontSize][colorName][opacity]
/// Example: bold18White05
///
class AppTextStyles {
  static TextStyle robotoReg = TextStyle(
    fontSize: 10.5.sp,fontFamily: "Roboto-regular",
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
  );
  static TextStyle robotoBold = TextStyle(
    fontSize: 10.5.sp,fontFamily: "Roboto-bold",
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
  );
}
