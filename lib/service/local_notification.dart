import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  LocalNotificationService._internal();

  static final _instance = LocalNotificationService._internal();

  factory LocalNotificationService.instance() => _instance;

  late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  final _androidInitalizingSettings = const AndroidInitializationSettings(
    'notification_icon',
  );

  final _iosInitalizingSettings = const DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
  );

  final _androidChannel = const AndroidNotificationChannel(
    'channel_id',
    'Channel name',
    description: 'Android Push notification',
    importance: Importance.max,
  );

  bool _isFlutterLocalNotificationInitialized = false;

  int _notificationCounter = 0;

  Future<void> init() async {
    if (_isFlutterLocalNotificationInitialized) {
      return;
    }

    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    final initializationSettings = InitializationSettings(
      android: _androidInitalizingSettings,
      iOS: _iosInitalizingSettings,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {
        // foreground notifications
      },
    );

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(_androidChannel);

    _isFlutterLocalNotificationInitialized = true;
  }

  Future<void> showNotification({
    String? title,
    String? body,
    String? payload,
  }) async {
    final androidDetails = AndroidNotificationDetails(
      _androidChannel.id,
      _androidChannel.name,
      channelDescription: _androidChannel.description,
      importance: Importance.max,
      priority: Priority.max,
    );

    final iosDetails = DarwinNotificationDetails();

    final notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _flutterLocalNotificationsPlugin.show(
      _notificationCounter++,
      title,
      body,
      notificationDetails,
      payload: payload,
    );
  }
}
