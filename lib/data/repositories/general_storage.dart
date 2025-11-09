import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

enum GeneralStorageKey { favorites }

class GeneralStorage {
  late final Box box;

  Future init() async {
    Directory? dir;
    if (!kIsWeb && (Platform.isWindows || Platform.isMacOS)) {
      dir = await getApplicationDocumentsDirectory();
    }
    await Hive.initFlutter(dir?.path);
    box = await Hive.openBox('general_storage');
  }

  Future write(GeneralStorageKey key, dynamic value) async {
    await box.put(key.name, value);
  }

  T read<T>(GeneralStorageKey key) {
    return box.get(key.name);
  }

  Future delete(GeneralStorageKey key) async {
    await box.delete(key);
  }

  Future writeObject(String key, value) async {
    await box.put(key, value.toJson());
  }

  Map<String, dynamic>? readObject(String key) {
    return box.get(key) as Map<String, dynamic>?;
  }
}
