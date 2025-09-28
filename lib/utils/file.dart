import 'package:flutter_dotenv/flutter_dotenv.dart';

String fileUrl(String fileId) {
  String url = dotenv.env['API']!;
  return '$url/api/files/$fileId';
}
