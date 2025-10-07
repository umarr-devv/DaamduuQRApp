import 'package:url_launcher/url_launcher.dart';

Future openGeo({required double latitude, required double longitude}) async {
  final Uri mapUri = Uri.parse(
    'geo:$latitude,$longitude?q=$latitude,$longitude(Место)',
  );
  if (!await launchUrl(mapUri, mode: LaunchMode.externalApplication)) {
    final Uri fallbackUri = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude',
    );
    await launchUrl(fallbackUri, mode: LaunchMode.externalApplication);
  }
}
