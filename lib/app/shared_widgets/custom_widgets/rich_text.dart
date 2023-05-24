import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../config/app_colors.dart';

class AlreadyaccountRichText extends StatelessWidget {
  const AlreadyaccountRichText();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          text: 'already-have-account'.tr,
          style: TextStyle(
            fontSize: 9.sp,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
            color: AppColors.kPrimary,
          ), // default text style
          children: <TextSpan>[
            TextSpan(
              /* recognizer: TapGestureRecognizer()
                ..onTap = () {

                  Get.back();
                },*/
              text: 'login'.tr,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 9.sp,
                color: AppColors.kPrimaryLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateAccountRichText extends StatelessWidget {
  const CreateAccountRichText();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          text: 'dont_have_account'.tr,
          style: TextStyle(
            fontSize: 9.sp,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
            color: AppColors.kPrimary,
          ), // default text style
          children: <TextSpan>[
            TextSpan(
              /* recognizer: TapGestureRecognizer()
                ..onTap = () {

                  Get.back();
                },*/
              text: " " + 'signup'.tr,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 9.sp,
                color: AppColors.kPrimaryLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
