import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for MessagingApi
void main() {
  final instance = DaamduuqrClient().getMessagingApi();

  group(MessagingApi, () {
    // On Send Messages
    //
    //Future<MessagingScheme> onSendMessagesApiMessagingSendPost(MessagingScheme messagingScheme) async
    test('test onSendMessagesApiMessagingSendPost', () async {
      // TODO
    });

  });
}
