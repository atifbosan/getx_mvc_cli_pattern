
import 'package:flutter/material.dart';
import 'package:getx_mvc_cli_pattern/app/config/app_colors.dart';
import 'package:sizer/sizer.dart';

Widget signupBackground =  Container(
  decoration: BoxDecoration(
      gradient: AppColors.backGroundGradient
  ),
);

Widget signUpBox () {
  return Align(
    child: Container(
      height: 70.h,
      width: 85.w,
      decoration: BoxDecoration(
          color: Colors.white70, borderRadius: BorderRadius.circular(20)
      ),
    ),
  );
}
