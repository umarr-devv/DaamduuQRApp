import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String timeToStr(TimeOfDay? time) {
  if (time != null) {
    return DateFormat(
      'HH:mm',
    ).format(DateTime(0, 0, 0, time.hour, time.minute));
  }
  return '--:--';
}
