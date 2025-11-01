import 'package:app/service/service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

class FirebaseMessagingService {
  FirebaseMessagingService._internal();

  static final FirebaseMessagingService _instance =
      FirebaseMessagingService._internal();

  factory FirebaseMessagingService.instance() => _instance;

  LocalNotificationService? _localNotificationService;

  late final String? pushToken;

  Future<void> init({
    required LocalNotificationService localNotificationService,
  }) async {
    _localNotificationService = localNotificationService;

    await _handlePushNotificationsToken();
    _requestPermission();
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    FirebaseMessaging.onMessage.listen(_firebaseMessagingForegroundHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenedApp);

    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      _onMessageOpenedApp(initialMessage);
    }
  }

  final talker = GetIt.I<Talker>();

  Future<void> _handlePushNotificationsToken() async {
    final token = await FirebaseMessaging.instance.getToken();
    pushToken = token;
    FirebaseMessaging.instance.onTokenRefresh
        .listen((pushToken) {
          //
        })
        .onError((exc) {
          talker.error(exc);
        });
  }

  Future<void> _requestPermission() async {
    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future<void> _firebaseMessagingForegroundHandler(
    RemoteMessage message,
  ) async {
    final notificationData = message.notification;
    if (notificationData != null) {
      _localNotificationService?.showNotification(
        title: notificationData.title,
        body: notificationData.body,
        payload: message.data.toString(),
      );
    }
  }

  Future<void> _onMessageOpenedApp(RemoteMessage message) async {}

  @pragma('vm:entry-point')
  static Future<void> firebaseMessagingBackgroundHandler(
    RemoteMessage message,
  ) async {}
}
