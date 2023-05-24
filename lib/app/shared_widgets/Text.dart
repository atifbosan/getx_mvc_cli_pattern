import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../config/app_colors.dart';
import '../routes/app_pages.dart';
import '../util/util.dart';

class Heading extends StatelessWidget {
  final String text;
  final Color? color;
  final double? height;
  final TextOverflow? overflow;

  final int? maxLines;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight fontWeight;

  const Heading(
    this.text, {
    Key? key,
    this.color = AppColors.textBlack,
    this.height,
    this.maxLines = 1,
    this.overflow,
    this.fontWeight = FontWeight.normal,
    this.textAlign,
    this.fontSize = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        height: height,
        color: color,
        fontFamily: 'Poppins',
        fontSize: fontSize!.sp,
        fontWeight: fontWeight,
      ),
    );
  }
}

class SubHeading extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final Color color;
  final double? height;
  final TextAlign? textAlign;
  final double fontSize;
  final int? maxLines;
  final TextOverflow? overflow;
  final FontWeight fontWeight;
  final double opacity;
  final TextDecoration? decoration;

  const SubHeading(
    this.text, {
    Key? key,
    this.color = AppColors.textBlack,
    this.height,
    this.fontFamily = "Epilogue-semibold",
    this.textAlign,
    this.fontSize = 12.0,
    this.opacity = 1.0,
    this.maxLines = 1,
    this.overflow,
    this.fontWeight = FontWeight.w600,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        height: height,
        color: color.withOpacity(opacity),
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        decoration: decoration,
        fontFamily: fontFamily,
      ),
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

class RegularText extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final Color color;
  final double? height;
  final TextAlign? textAlign;
  final double fontSize;
  final int? maxLines;
  final TextOverflow? overflow;
  final FontWeight fontWeight;
  final double opacity;
  final TextDecoration? decoration;

  const RegularText(
    this.text, {
    Key? key,
    this.color = AppColors.textBlack,
    this.height,
    this.fontFamily = "Roboto-Medium",
    this.textAlign,
    this.fontSize = 12.0,
    this.opacity = 1.0,
    this.maxLines = 1,
    this.overflow,
    this.fontWeight = FontWeight.w400,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        height: height,
        color: color.withOpacity(opacity),
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        decoration: decoration,
        fontFamily: fontFamily,
      ),
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

class OtpHeading extends StatelessWidget {
  final String text;
  final Color? color;
  final double? height;
  final TextOverflow? overflow;

  final int? maxLines;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight fontWeight;

  const OtpHeading(
    this.text, {
    Key? key,
    this.color = AppColors.textBlack,
    this.height,
    this.maxLines = 1,
    this.overflow,
    this.fontWeight = FontWeight.normal,
    this.textAlign,
    this.fontSize = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        height: height,
        color: AppColors.kPrimary,
        fontFamily: 'Nexa',
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}

class OtpSubHeading extends StatelessWidget {
  final String text;
  final Color? color;
  final double? height;
  final TextOverflow? overflow;

  final int? maxLines;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight fontWeight;

  const OtpSubHeading(
    this.text, {
    Key? key,
    this.color,
    this.height,
    this.maxLines = 1,
    this.overflow,
    this.fontWeight = FontWeight.normal,
    this.textAlign,
    this.fontSize = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        height: height,
        color: color != null ? color : AppColors.kPrimary,
        fontFamily: 'Poppins',
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

Widget successText1() {
  return Text(
    "success-message".tr,
    style: TextStyle(
        fontFamily: "Poppins",
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.kPrimary),
  );
}

Widget successText2() {
  return Text(
    "let-us-know-you-more".tr,
    style: TextStyle(
        fontFamily: "Poppins",
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.kPrimary),
  );
}

Widget skipButton() {
  return InkWell(
    onTap: () {
     // Get.toNamed(Routes.MAIN);
    },
    child: Padding(
      padding: EdgeInsets.only(left: 18.h),
      child: Container(
        child: Row(
          children: [
            Text(
              "skip".tr,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kPrimary),
            ),
            SizedBox(
              width: 1.w,
            ),
            Image.asset(
              Utils.getIconPath("arrow_forward"),
              height: 1.2.h,
            )
          ],
        ),
      ),
    ),
  );
}

Widget backArrowButton() {
  return InkWell(
      onTap: () => Get.back(),
      child: Icon(
        Icons.arrow_back_ios,
        color: AppColors.kPrimary,
      ));
}

Widget backButton() {
  return InkWell(
    onTap: () {
      Get.back();
    },
    child: Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Container(
        child: Row(
          children: [
            Image.asset(
              Utils.getIconPath("arrow_back"),
              height: 1.2.h,
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              "back".tr,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kPrimary),
            ),
          ],
        ),
      ),
    ),
  );
}

class SubHeadingText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? height;
  final TextOverflow? overflow;

  final int? maxLines;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight fontWeight;

  const SubHeadingText(
    this.text, {
    Key? key,
    this.color = AppColors.textBlack,
    this.height,
    this.maxLines = 1,
    this.overflow,
    this.fontWeight = FontWeight.normal,
    this.textAlign,
    this.fontSize = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        height: height,
        color: color,
        fontFamily: 'Poppins',
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double? height;
  final TextOverflow? overflow;

  final int? maxLines;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight fontWeight;

  const TextWidget(
    this.text, {
    Key? key,
    this.color = AppColors.textBlack,
    this.height,
    this.maxLines = 1,
    this.overflow,
    this.fontWeight = FontWeight.normal,
    this.textAlign,
    this.fontSize = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        height: height,
        color: color,
        fontFamily: 'Poppins',
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
