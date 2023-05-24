import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:getx_mvc_cli_pattern/app/util/util.dart';

class FirebaseMessagingHelper {
  static Future<void> initializeFirebase() async {
    // Initialize Firebase
    await Firebase.initializeApp();

    // Request Permissions (for iOS)
    NotificationSettings settings =
        await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      debugPrint('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      debugPrint('User granted provisional permission');
    } else {
      debugPrint('User declined or has not accepted permission');
    }
  }

  static void setupFirebaseMessaging(BuildContext context) {
    // App is Terminated
    FirebaseMessaging.instance.getInitialMessage();

    // App is running in Foreground
    FirebaseMessaging.onMessage.listen((message) {
      debugPrint('Got notification while app is in forground');

      Utils.showSnackBar(
          title: message.notification?.title as String,
          message: message.notification?.body as String,
          error: false);
    });

    // App is Running in Background
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      debugPrint('Got notification while app is running in background');
    });
  }

  static Future<String?> getDeviceToken() async {
    String? deviceToken = await FirebaseMessaging.instance.getToken();
    return deviceToken;
  }
}
