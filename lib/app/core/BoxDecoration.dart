import 'package:flutter/material.dart';

import '../config/app_colors.dart';

class MyBoxDecoration {
  static BoxDecoration bottomLeftRightCircularRadiusDecoration(
      {Color color = AppColors.kWhite}) {
    return BoxDecoration(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(
          15,
        ),
        bottomRight: Radius.circular(
          15,
        ),
      ),
      color: color,
    );
  }

  static BoxDecoration bottomLeftRightCircularRadiusWithBoxShadowDecoration(
      {Color color = AppColors.kWhite}) {
    return BoxDecoration(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(
          25,
        ),
        bottomRight: Radius.circular(
          25,
        ),
      ),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 3),
          color: AppColors.kGrey.withOpacity(0.2),
          blurRadius: 8,
          spreadRadius: 0,
        )
      ],
      color: color,
    );
  }

  static BoxDecoration roundCircularRadiusWithBoxShadowDecoration(
      {Color color = AppColors.kWhite, double radius = 25.0}) {
    return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(
          radius,
        ),
      ),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 3),
          color: AppColors.kGrey.withOpacity(0.2),
          blurRadius: 8,
          spreadRadius: 0,
        )
      ],
      color: color,
    );
  }

  static BoxDecoration roundCircularRadiusWithOutBoxShadowDecoration(
      {Color color = AppColors.kWhite,
      double radius = 10,
      Color borderColor = AppColors.kWhite}) {
    return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(
          radius,
        ),
      ),
      border: Border.all(color: borderColor, width: 1),
      color: color,
    );
  }

  static BoxDecoration roundCircularDropDownRadiusWithBoxShadowDecoration({
    Color color = AppColors.kWhite,
  }) {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(
          45,
        ),
      ),
      border: Border.all(color: AppColors.greyWhite, width: 0.5),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 3),
          color: AppColors.kGrey.withOpacity(0.2),
          blurRadius: 8,
          spreadRadius: 0,
        )
      ],
      color: color,
    );
  }

  static BoxDecoration
      roundCircularDropDownRadiusWithBoxShadowDecorationwithBorderRadius(
          {Color color = AppColors.kWhite}) {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(
          45,
        ),
      ),
      border: Border.all(color: AppColors.greyWhite, width: 0.5),
      color: color,
    );
  }

  static textFieldBoxDecoration(String error) {
    return BoxDecoration(
        color: AppColors.kWhite,
        boxShadow: [
          BoxShadow(
              color: AppColors.kPrimaryLight.withOpacity(0.4),
              spreadRadius: 0,
              blurRadius: 6)
        ],
        border: error != "null"
            ? Border(
                left: BorderSide(color: Colors.red),
                right: BorderSide(color: Colors.red),
                top: BorderSide(color: Colors.red),
                bottom: BorderSide(color: Colors.red),
              )
            : Border(),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(23),
            topLeft: Radius.circular(23),
            bottomLeft: Radius.circular(23),
            bottomRight: Radius.circular(23)));
  }

  static chatTextFieldBoxDecoration() {
    return BoxDecoration(
        color: AppColors.kWhite,
        boxShadow: [
          BoxShadow(
              color: AppColors.kPrimaryLight.withOpacity(0.39),
              spreadRadius: 0,
              blurRadius: 4)
        ],
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(23),
            topLeft: Radius.circular(23),
            bottomLeft: Radius.circular(23),
            bottomRight: Radius.circular(23)));
  }

  static CircularBoxDecoration() {
    return BoxDecoration(
      color: AppColors.kWhite,
      boxShadow: [
        BoxShadow(
            color: AppColors.kPrimaryLight.withOpacity(0.6),
            spreadRadius: 0,
            blurRadius: 4)
      ],
      shape: BoxShape.circle,
    );
  }

  static ChatBoxDecoration() {
    return BoxDecoration(
        color: AppColors.kWhite,
        boxShadow: [
          BoxShadow(
              color: AppColors.kPrimaryLight.withOpacity(0.6),
              spreadRadius: 0,
              blurRadius: 4)
        ],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(18),
          topLeft: Radius.circular(18),
        ));
  }

  static mainBoxDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        gradient: AppColors.mainBoxGradient);
  }

  static mainHomeBoxDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        gradient: AppColors.mainBoxGradient);
  }

  static scanBoxDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(23),
        color: AppColors.kWhite,
        boxShadow: [BoxShadow(color: AppColors.kPrimaryLight)]);
  }

  static bottomBarBox() {
    return BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
              color: AppColors.kPrimaryLight, spreadRadius: 0, blurRadius: 4)
        ]);
  }

  static listBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      border: Border(
        bottom: BorderSide(width: 1.0, color: AppColors.dividerGrey),
      ),
    );
  }

  static tabBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      border: Border(
        right: BorderSide(width: 1.0, color: AppColors.dividerGrey),
        // left: BorderSide(width: 1.0, color: AppColors.dividerGrey),
      ),
    );
  }
}
