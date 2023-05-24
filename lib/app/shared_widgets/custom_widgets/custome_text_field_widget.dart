import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../config/app_colors.dart';
import '../../core/BoxDecoration.dart';
import '../../util/util.dart';
import '../Textfeld.dart';

class CustomTextFieldWidget extends StatelessWidget {
  String hint;
  String iconName;
  TextEditingController controller;
  final FormFieldValidator validator;
  CustomTextFieldWidget(
      {Key? key,
      required this.hint,
      required this.iconName,
      required this.controller,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: MyBoxDecoration.chatTextFieldBoxDecoration(),
      height: 4.96.h,
      width: 80.1.w,
      child: Row(
        children: [
          iconName != null
              ? Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 2.5.h,
                      width: 5.w,
                      child: Image.asset(
                        Utils.getIconPath('$iconName'),
                        height: 2.17.h,
                      )),
                )
              : Container(),
          SizedBox(
            width: 0.5.w,
          ),
          Container(
            decoration: BoxDecoration(gradient: AppColors.backGroundGradient),
            height: 3.h,
            width: 0.06.w,
          ),
          SizedBox(
            width: 2.w,
          ),
          Container(
            height: 35,
            width: 60.w,
            child: InputTextField(
              false,
              controller: controller,
              hint: "$hint".tr,
              hintfontSize: 15,
              textColor: AppColors.kPrimary,
              textInputType: TextInputType.emailAddress,
              borderDecoration: InputBorder.none,
              hintTextColor: AppColors.textGrey,
              validator: validator,
            ),
          )
        ],
      ),
    );
  }
}

class CustomDateTextFieldWidget extends StatelessWidget {
  String hint;
  String iconName;
  TextEditingController controller;
  final FormFieldValidator validator;
  CustomDateTextFieldWidget(
      {Key? key,
      required this.hint,
      required this.iconName,
      required this.controller,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: MyBoxDecoration.chatTextFieldBoxDecoration(),
      height: 4.96.h,
      // width: 80.1.w,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                height: 2.5.h,
                width: 5.w,
                child: Image.asset(
                  Utils.getIconPath('$iconName'),
                  height: 2.17.h,
                )),
          ),
          SizedBox(
            width: 0.5.w,
          ),
          Container(
            decoration: BoxDecoration(gradient: AppColors.backGroundGradient),
            height: 3.h,
            width: 0.06.w,
          ),
          SizedBox(
            width: 2.w,
          ),
          Container(
            height: 35,
            width: 26.w,
            child: InputTextField(
              false,
              controller: controller,
              hint: "$hint".tr,
              hintfontSize: 15,
              textColor: AppColors.kPrimary,
              textInputType: TextInputType.emailAddress,
              borderDecoration: InputBorder.none,
              hintTextColor: AppColors.textGrey,
              validator: validator,
            ),
          )
        ],
      ),
    );
  }
}

class CustomCardTextField extends StatelessWidget {
  String hint;
  TextInputType textInputType;
  TextEditingController controller;
  final FormFieldValidator validator;
  CustomCardTextField(
      {Key? key,
      required this.hint,
      required this.textInputType,
      required this.validator,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: MyBoxDecoration.chatTextFieldBoxDecoration(),
      height: 45,
      width: 80.1.w,
      child: Row(
        children: [
          SizedBox(
            width: 8.w,
          ),
          Container(
            height: 40,
            width: 60.w,
            child: InputTextField(
              false,
              controller: controller,
              hint: "$hint".tr,
              hintfontSize: 15,
              textColor: AppColors.kPrimary,
              textInputType: textInputType,
              borderDecoration: InputBorder.none,
              hintTextColor: AppColors.textGrey,
              validator: validator,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCardDateCVVTextField extends StatelessWidget {
  String hint;
  TextInputType textInputType;
  TextEditingController controller;
  final FormFieldValidator validator;
  CustomCardDateCVVTextField(
      {Key? key,
      required this.hint,
      required this.textInputType,
      required this.validator,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: MyBoxDecoration.chatTextFieldBoxDecoration(),
      height: 45,
      child: Row(
        children: [
          SizedBox(
            width: 8.w,
          ),
          Container(
            height: 40,
            width: 31.w,
            child: InputTextField(
              false,
              controller: controller,
              hint: "$hint".tr,
              hintfontSize: 15,
              textColor: AppColors.kPrimary,
              textInputType: textInputType,
              borderDecoration: InputBorder.none,
              hintTextColor: AppColors.textGrey,
              validator: validator,
            ),
          ),
        ],
      ),
    );
  }
}
