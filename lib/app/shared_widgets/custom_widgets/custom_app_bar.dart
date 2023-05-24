import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../config/app_colors.dart';
import '../../util/util.dart';

class CustomAppBar extends StatelessWidget {
  final String? leftIcon;
  final Widget? rightIcon;
  var onLeftTap;
  var onRightTap;
  final String title;
  final bool isSingleIcon;

  CustomAppBar({
    required this.leftIcon,
    required this.rightIcon,
    this.onLeftTap,
    this.onRightTap,
    required this.title,
    required this.isSingleIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leftIcon != null
              ? IconButton(
                  onPressed:onLeftTap,

            icon: Image.asset(leftIcon!, height: 3.h,),
          )
              // InkWell(
              //         onTap: onLeftTap,
              //         child:
              //         Image.asset(
              //           leftIcon!,
              //           height: 3.h,
              //         )
              // )
              : SizedBox(
                  width: 7.w,
                ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: "Epilogue-semibold",
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
          rightIcon == null
              ? Container(
                  width: 7.w,
                )
              : rightIcon!,
        ],
      ),
    );
  }
}
