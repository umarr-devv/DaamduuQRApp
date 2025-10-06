import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for HealthApi
void main() {
  final instance = DaamduuqrClient().getHealthApi();

  group(HealthApi, () {
    // On Health
    //
    //Future<HealthScheme> onHealthApiHealthGet() async
    test('test onHealthApiHealthGet', () async {
      // TODO
    });

  });
}
