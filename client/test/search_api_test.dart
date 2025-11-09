import 'package:test/test.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';


/// tests for SearchApi
void main() {
  final instance = DaamduuqrClient().getSearchApi();

  group(SearchApi, () {
    // On Search
    //
    //Future<SearchResultScheme> search(String query) async
    test('test search', () async {
      // TODO
    });

    // On Search By Establishment
    //
    //Future<SearchResultScheme> searchByEstablishment(String query, String establishmentId) async
    test('test searchByEstablishment', () async {
      // TODO
    });

  });
}
