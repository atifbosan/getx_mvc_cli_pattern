import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';


import '../routes/app_pages.dart';
import '../util/util.dart';

Widget splashLogo = Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      InkWell(
        child: Image.asset(
          Utils.getImagePath("logo"),
          height: 12.85.h,
        ),
        onTap: () async {
          Future.delayed(Duration(seconds: 2));
        //  Get.toNamed(Routes.LOGIN);
        },
      ),
    ],
  ),
);
