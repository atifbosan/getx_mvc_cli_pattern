import 'package:get/get.dart';

class FormValidation {
  static String? checkEmpty(String value, String message) {
    if (value.isEmpty) {
      return "please_enter".tr + " $message";
    } else {
      return null;
    }
  }

  static String? checkAmmount(
    String value,
  ) {
    if (value.isEmpty) {
      return "please_enter_amount".tr;
    } else {
      return null;
    }
  }

  static String? checkAmount(
    String value,
    double totalAmount,
  ) {
    if (value.isEmpty) {
      return "please_enter_amount".tr;
    } else if (double.parse(value) > 100.0) {
      return "Exceed Maximum Withdrawal Amount Limit";
    } else if (double.parse(value) > totalAmount) {
      return "Exceeded Amount Limit";
    } else if (double.parse(value) == 0.0) {
      return "Please enter correct amount";
    } else {
      return null;
    }
  }

  static String? confirmPassword(
      String value, String value2, String message, int length) {
    if (value.isEmpty) {
      return "please_enter".tr + " $message";
    } else if (value.length < 8) {
      return "$message " + "must_be_length".tr;
    } else if (value != value2) {
      return "password_mismatch".tr;
    } else {
      return null;
    }
  }

  static String? checkPassword(String value, String message, int length) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

    if (value.isEmpty) {
      return "please_enter".tr + " $message";
    } else if (value.length < 8) {
      return "$message " + "must_be_length".tr;
    } else if (!regex.hasMatch(value)) {
      return "password_valid".tr + " (Abc@!5123)";
    } else {
      return null;
    }
  }

  static String? checkEmail(String value) {
    RegExp phoneregex = RegExp(
        r'^(\+\d{1,2}\s?)?1?\-?\.?\s?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$');
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern.toString());

    if (value.isEmpty) {
      return "please_enter_email".tr;
    } else if (!regex.hasMatch(value)) {
      return "please_enter_valid_email".tr;
    } else {
      return null;
    }
  }

  static String? checkEmailOrPhone(String value) {
    RegExp phoneregex = RegExp('[0-9]');
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern.toString());

    if (value.isEmpty) {
      return "please_enter_email_phone".tr;
    } /*else if (value.isNotEmpty) {
      if ((regex.hasMatch(value)) || (phoneregex.hasMatch(value))) {
        return null;
      } else {
        return "Please Enter a valid Email/Phone";
      }
    }*/
    else {
      return null;
    }
  }
}
