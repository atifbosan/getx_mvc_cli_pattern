import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../config/app_colors.dart';
import 'Text.dart';
import 'component.dart';

class EmailSentDialogue extends StatelessWidget {
  String message;
   EmailSentDialogue({Key? key,required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 105,vertical: 60),contentPadding: EdgeInsets.only(left: 0.0,right: 0.0,top: 12),
      actions: [
        Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: (){
                Get.back();
              },
              child: SubHeading(
                "ok".tr,
                fontFamily: "Roboto-semibold",
                fontWeight: FontWeight.w600,
                color: AppColors.kSecondary,
                fontSize: 14,
              ),
            ),
          ),
        )
      ],
      title: Center(
          child: SubHeading(
            "email-sent".tr,
            color: AppColors.black,
          )),
      titlePadding: EdgeInsets.only(top: 15),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
              color: AppColors.kWhite)),
      content: Container(
        height: 10.h,
        //width: 10.w,
        decoration: BoxDecoration(
            color: AppColors.kWhite,
            borderRadius:
            BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            //SizedBox(height: 0.h,),
            Padding(
              padding:  EdgeInsets.only(right: 20,left: 20,top: 2),
              child: SubHeading(
                message,
                maxLines: 6,
                fontFamily: "Epilogue-Regular",
                fontWeight: FontWeight.w400,
                fontSize: 9,
                textAlign: TextAlign.center,
                height: 1.5,
              ),
            ),
            AppWidgets.collectionDivider(
                horizontalPadding: 0.0)
          ],
        ),
      ),
    );
  }
}
