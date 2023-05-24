import 'dart:io';

import 'package:get/get.dart';

import '../../app/config/global_var.dart';
import '../providers/network/api_endpoint.dart';
import '../providers/network/api_provider.dart';

class AuthRepository {
  late APIProvider apiClient;

  AuthRepository() {
    apiClient = APIProvider();
  }

  Future signUp(Map<String, dynamic> map) async {
    print("SignUp Function pribt: $map");
    Map<String, dynamic> data = await apiClient.basePostAPI(
        APIEndpoint.signUpUrl, map, false, Get.context);
    return data;
  }

  Future personalInfo(Map<String, dynamic> map) async {
    Map<String, dynamic> data = await apiClient.basePostAPI(
        APIEndpoint.personalInfoUpUrl, map, false, Get.context);
    return data;
  }

  Future updateProfile(Map<String, dynamic> map) async {
    Map<String, dynamic> data = await apiClient.basePostAPI(
        APIEndpoint.updateProfileUrl, map, true, Get.context);
    return data;
  }

  Future login(dynamic userProfile) async {
    Map<String, dynamic>? data = await apiClient.basePostAPI(
        APIEndpoint.loginUrl,
        {
          "emailOrPhone": userProfile.email ?? "",
          //  "phoneNumber": userProfile.phoneNumber ?? "",
          "password": userProfile.password,
          "fcmToken": Globals.fcmToken,
          "loginDevice": Globals.loginDevice ?? "string",
          "deviceId": Globals.deviceId ?? "string",
          "appVersion": Globals.appVersion ?? "string"
        },
        false,
        Get.context);
    return data;
  }

  Future forgetPassword({required String username}) async {
    print(
        "Forgot OTP Send: ${APIEndpoint.forgetPasswordUrl}?phone=${username}");
    Map<String, dynamic> data = await apiClient.basePostAPI(
        "${APIEndpoint.forgetPasswordUrl}?phone=${username}",
        {},
        false,
        Get.context);
    return data;
  }

  Future verifyEmail(Map<String, dynamic> body) async {
    Map<String, dynamic>? data = await apiClient.basePostAPI(
        APIEndpoint.verifyEmailUrl, body, false, Get.context);
    return data;
  }

  Future verifyPhone(Map<String, dynamic> body) async {
    Map<String, dynamic>? data = await apiClient.basePostAPI(
        APIEndpoint.verifyPhoneUrl, body, false, Get.context);
    return data;
  }

  Future resendVerificationEmail({required String email}) async {
    Map<String, dynamic>? data = await apiClient.baseGetAPI(
        "${APIEndpoint.resendVerifyEmailUrl}?email=$email&id=${Globals.userId}",
        false,
        Get.context);
    return data;
  }

  Future sendVerificationSms({required String phone}) async {
    Map<String, dynamic>? data = await apiClient.basePostAPI(
        "${APIEndpoint.sendVerifySmsUrl}?userId=${Globals.userId}",
        {"userId": "${Globals.userId}"},
        false,
        Get.context);
    return data;
  }

  Future resendVerificationSms({required String phone}) async {
    Map<String, dynamic>? data = await apiClient.baseGetAPI(
        "${APIEndpoint.sendVerifySmsUrl}?phoneNumber=$phone&id=${Globals.userId}",
        false,
        Get.context);
    return data;
  }

  Future updatePassword(Map<String, dynamic> body) async {
    Map<String, dynamic>? data = await apiClient.basePostAPI(
        APIEndpoint.updateForgetPasswordUrl, body, false, Get.context);
    return data;
  }

  Future updateForgotPassword(
      {required String username, required String newPassword}) async {
    Map<String, dynamic>? data = await apiClient.basePostAPI(
        "${APIEndpoint.updateForgetPasswordUrl}?EmailorPhone=$username&newPassword=$newPassword",
        {},
        false,
        Get.context);
    return data;
  }

  Future uploadImage(File file) async {
    Map<String, dynamic>? data = await apiClient.baseMultiPartAPI(
        APIEndpoint.uploadFileUrl, {}, false, Get.context, file);
    return data;
  }

  Future checkUserName(String userName) async {
    Map<String, dynamic>? data = await apiClient.baseGetAPI(
        "${APIEndpoint.checkUserName}?name=$userName", false, Get.context);
    return data;
  }

  Future refreshToken(dynamic userProfile) async {
    Map<String, dynamic>? data = await apiClient.basePostAPI(
        APIEndpoint.refreshTokenUrl,
        {
          "refreshToken": Globals.refreshToken,
          "fcmToken": Globals.fcmToken,
          "loginDevice": userProfile.loginDevice ?? "string",
          "appVersion": userProfile.appVersion ?? "string"
        },
        false,
        Get.context);
    return data;
  }

  Future verifyForgetPasswordOtp(
      {required String otp, required String userId}) async {
    Map<String, dynamic>? data = await apiClient.basePostAPI(
        "${APIEndpoint.verifyForgetPasswordOtp}?userId=$userId&ResetOTP=$otp",
        {},
        false,
        Get.context);
    return data;
  }
}
