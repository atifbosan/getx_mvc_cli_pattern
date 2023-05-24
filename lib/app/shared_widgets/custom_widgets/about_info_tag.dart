import 'package:flutter/material.dart';
import 'package:getx_mvc_cli_pattern/app/shared_widgets/Text.dart';
import 'package:sizer/sizer.dart';

import '../../config/app_colors.dart';

aboutInfoTag({
  required String image,
  required String title,
  required String count,
}) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              scale: 4.5,
              image,
            ),
            SizedBox(
              width: 1.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.h),
              child: OtpHeading(
                count != null && count != "null" ? count : "0",
                fontSize: 13,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        SubHeadingText(
          "$title",
          fontSize: 12,
          color: AppColors.kPrimary,
        ),
      ],
    );
iconWithText({
  required String image,
  required String count,
}) =>
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          scale: 6,
          image,
        ),
        SizedBox(
          width: 1.h,
        ),
        Padding(
          padding: EdgeInsets.only(top: 1.h),
          child: OtpHeading(
            "${count}",
            fontSize: 13,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
