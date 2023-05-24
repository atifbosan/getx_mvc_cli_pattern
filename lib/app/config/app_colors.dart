import 'package:flutter/material.dart';

class AppColors {
  static const Color kWhite = Colors.white;
  static const Color kWhite2 = Color(0xFFFFFF);
  static const Color kGreen = Colors.green;
  static const Color kTransparent = Colors.transparent;
  static const Color kGrey = Color(0xffABA8A8);
  static const Color kBoxGrey = Color(0xffF5F5F5);
  static const Color kBoxGrey2 = Color(0xffF9F9F9);
  static const Color kBoxGrey3 = Color(0xffc6c6c6);
  static const Color kBoxGrey4 = Color(0xffD9D9D9);
  static const Color appGrey = Color(0xffF2F2F2);
  static const Color dividerColor = Color(0xffE0E0E0);
  static const Color black = Colors.black;
  static const Color dimBlack = Color(0xff666666);
  static const Color tagsColor = Color(0xffC4C4C4);
  // static const Color primaryBlue = Color(0xff00A8EA);
  static const Color textBlack = Color(0xff737373);
  static const Color textBlue = Color(0xff200E32);
  static const Color filterTextGrey = Color(0xff808080);
  static const Color cuisineBlack = Color(0xff1B1B1B);
  static const Color textBlackLight = Color(0xffE0E0E0);
  static const Color greyWhite = Color(0xffEFEFEF);
  // static const Color facbookColor = Color(0xff4267B2);
  static const Color kPrimary = Color(0xff0D3685);
  static const Color kPrimaryLight = Color(0xff00A8EA);
  static const Color kSecondary = Color(0xffD9ECF7);
  static const Color kbtnGrey = Color(0xffABA8A8);
  static const Color redColor = Colors.red;
  static const Color textGrey = Color(0xffC8C8C8);
  static const Color dividerGrey = Color(0xffE2E2E2);
  static const Gradient backGroundGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [kPrimaryLight, kPrimary]);
  static const Gradient buttonBackgroundGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [kPrimaryLight, kPrimary]);
  static const Gradient buttonBackgroundGrayGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [kGrey, kGrey]);
  static const Gradient diividerLine1 = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [kPrimary, kPrimaryLight]);
  static const Gradient dividerLive2 = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [kPrimaryLight, kPrimary]);
  static const Gradient verifyBtnInactive = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [kbtnGrey, kbtnGrey]);
  static const Gradient verifyBtnActive = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [kPrimaryLight, kPrimary]);
  static Gradient mainBoxGradient = LinearGradient(
      colors: [Color(0xff1554CE), Color(0xff00A8EA).withOpacity(0.82)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
}
