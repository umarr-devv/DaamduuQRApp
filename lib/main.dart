import 'dart:async';

import 'package:app/app.dart';
import 'package:app/data/repositories/repositories.dart';
import 'package:app/firebase_options.dart';
import 'package:app/service/hyrated_storage.dart';
import 'package:app/service/service.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      await initDependencies();
      runApp(AppScreen());
    },
    (exc, st) {
      GetIt.I<Talker>().error(exc, st);
    },
  );
}

Future initDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final talker = TalkerConfigure.init();
  GetIt.I.registerSingleton<Talker>(talker);

  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await dotenv.load(fileName: ".env");

  final dio = DioConfigure.init(talker: talker);
  GetIt.I.registerSingleton<Dio>(dio);

  final client = DaamduuqrClient(dio: dio);
  GetIt.I.registerSingleton<DaamduuqrClient>(client);

  final secureStorage = SecureStorage();
  final generalStorage = GeneralStorage();

  secureStorage.init();
  await generalStorage.init();

  await HyratedStorageService.init();

  GetIt.I.registerSingleton<SecureStorage>(secureStorage);
  GetIt.I.registerSingleton<GeneralStorage>(generalStorage);

  final localNotification = LocalNotificationService.instance();
  await localNotification.init();
  GetIt.I.registerSingleton<LocalNotificationService>(localNotification);

  final messaging = FirebaseMessagingService.instance();
  await messaging.init(localNotificationService: localNotification);
  GetIt.I.registerSingleton<FirebaseMessagingService>(messaging);

  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  GetIt.I.registerSingleton<PackageInfo>(packageInfo);
}
