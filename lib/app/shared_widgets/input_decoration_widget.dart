import 'package:control_style/decorated_input_border.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../config/app_colors.dart';
import '../config/global_var.dart';

inputDecorationWidget({
  required String hint,
  required Widget prefixIcon,
}) {
  return InputDecoration(
    hintText: "${hint}",
    contentPadding: EdgeInsets.fromLTRB(25, 12, 0, 5),
    isDense: true,
    suffixIconColor: AppColors.kGrey,
    prefixIcon: Container(
      child: Padding(
        padding: EdgeInsets.only(
            left: 4.0.w, right: Globals.language == "ar" ? 10.w : 2.w),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            prefixIcon,
            SizedBox(
              width: 1.9.w,
            ),
            Container(
              decoration: BoxDecoration(gradient: AppColors.backGroundGradient),
              height: 3.h,
              width: 0.1.w,
            ),
          ],
        ),
      ),
    ),
    hintStyle: TextStyle(
        color: AppColors.textGrey,
        fontSize: 15,
        fontFamily: "Poppins",
        height: 0.8,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500),
    filled: true,
    fillColor: Colors.white,
    border: DecoratedInputBorder(
      shadow: [
        BoxShadow(
            color: AppColors.kPrimaryLight.withOpacity(0.4),
            spreadRadius: 0,
            blurRadius: 6)
      ],
      child: OutlineInputBorder(
        borderSide: BorderSide(width: 0, color: Colors.transparent),
        borderRadius: BorderRadius.all(
          Radius.circular(80),
        ),
      ),
    ),
    focusedBorder: DecoratedInputBorder(
      shadow: [
        BoxShadow(
            color: AppColors.kPrimaryLight.withOpacity(0.4),
            spreadRadius: 0,
            blurRadius: 6)
      ],
      child: OutlineInputBorder(
        borderSide: BorderSide(width: 0, color: Colors.transparent),
        borderRadius: BorderRadius.all(
          Radius.circular(80),
        ),
      ),
    ),
    enabledBorder: DecoratedInputBorder(
      shadow: [
        BoxShadow(
            color: AppColors.kPrimaryLight.withOpacity(0.4),
            spreadRadius: 0,
            blurRadius: 6)
      ],
      child: OutlineInputBorder(
        borderSide: BorderSide(width: 0, color: Colors.transparent),
        borderRadius: BorderRadius.all(
          Radius.circular(80),
        ),
      ),
    ),
  );
}
