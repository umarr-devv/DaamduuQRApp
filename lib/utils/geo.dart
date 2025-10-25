import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future openGeo({required double latitude, required double longitude}) async {
  final talker = GetIt.I<Talker>();
  final Uri mapUri = Uri.parse(
    'geo:$latitude,$longitude?q=$latitude,$longitude',
  );
  try {
    await launchUrl(mapUri, mode: LaunchMode.externalApplication);
  } catch (exc) {
    talker.error(exc);
    final Uri fallbackUri = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude',
    );
    await launchUrl(fallbackUri, mode: LaunchMode.externalApplication);
  }
}
