import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';

class MessagingService {
  static Future<String?> getPushToken() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    if (Platform.isIOS) {
      NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );
      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        await messaging.setAutoInitEnabled(true);
        String? apnsToken = await messaging.getAPNSToken();

        int retries = 0;
        while (apnsToken == null && retries < 5) {
          await Future.delayed(const Duration(seconds: 1));
          apnsToken = await messaging.getAPNSToken();
          retries++;
        }

        if (apnsToken == null) {
          return null;
        }
      }
    }
    final pushToken = await FirebaseMessaging.instance.getToken();
    return pushToken;
  }
}
