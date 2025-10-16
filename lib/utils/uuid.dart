import 'package:uuid/uuid.dart';

String generateUuid() {
  return Uuid().v7();
}
