import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../config/app_colors.dart';

class CustomRadioButton extends StatelessWidget {
  String SelectedValue;
  String myValue;
  CustomRadioButton(
      {Key? key, required this.SelectedValue, required this.myValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.0.h,
      width: 5.29.w,
      // padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: AppColors.kPrimaryLight.withOpacity(0.4),
              spreadRadius: 0,
              blurRadius: 6)
        ],
        color: AppColors.kWhite,

        // gradient: AppColors.backGroundGradient,
        border: Border.all(width: 3, color: Colors.transparent),
      ),
      child: SelectedValue == myValue
          ? Container(
              height: 0.863.h,
              width: 1.869.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.kPrimaryLight,
              ),
            )
          : Container(),
    );
  }
}
