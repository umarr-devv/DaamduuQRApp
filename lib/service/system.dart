import 'package:flutter/services.dart';

class SystemService {
  static void setOverlayStyle(SystemUiOverlayStyle style) {
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}
