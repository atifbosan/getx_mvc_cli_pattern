import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../config/app_colors.dart';
import '../util/util.dart';

Widget customLogo() {
  return Container(
    child: Image.asset(
      Utils.getImagePath("logo"),
      height: 6.h,
      width: 33.w,
    ),
  );
}

